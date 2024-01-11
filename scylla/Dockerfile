FROM scylladb/scylla:5.1.4
# COPY scylla.yaml /etc/scylla/scylla.yaml 

EXPOSE 9042
ENTRYPOINT /docker-entrypoint.py --authorizer=AllowAllAuthorizer --smp "2" --memory "2G" --overprovisioned "1" --api-address "127.0.0.1" --listen-address "127.0.0.1" --rpc-address "0.0.0.0" --broadcast-rpc-address "255.255.255.0" --alternator-address "0.0.0.0"