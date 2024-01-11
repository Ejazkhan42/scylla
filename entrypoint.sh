#!/bin/bash

# Start the nginx process
nginx -g "daemon on;"

# Start the backend service
/backend/build