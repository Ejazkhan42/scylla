FROM golang:1.20.3-buster AS backend
WORKDIR /backend
COPY ./admin-server/go.mod ./admin-server/go.sum ./
RUN go mod download && go mod verify
COPY ./admin-server/. ./
RUN CGO_ENABLED=0 GOOS=linux go build -o build ./go/cmd

FROM node:16-alpine AS admin-ui
WORKDIR /admin-ui
COPY ./admin-ui/package.json ./admin-ui/yarn.lock ./
RUN yarn install
COPY ./admin-ui/. ./
RUN yarn build

FROM node:16-alpine AS importer-ui
WORKDIR /importer-ui
COPY ./importer-ui/package.json ./importer-ui/yarn.lock ./
RUN yarn install
COPY ./importer-ui/. ./
RUN yarn build

FROM ubuntu:latest AS final
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* 
# Copy backend files
RUN mkdir -p /backend
COPY --from=backend /backend/build /backend 

# Copy Admin-UI
COPY --from=admin-ui /admin-ui/build /var/www/html/

# Copy Importer-UI
RUN mkdir -p /var/www/html/importer-ui
COPY --from=importer-ui /importer-ui/build/static /var/www/html/static
COPY --from=importer-ui /importer-ui/build /var/www/html/importer-ui/

COPY ./nginx.conf /etc/nginx/sites-available/default
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
