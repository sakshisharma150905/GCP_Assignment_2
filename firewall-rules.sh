#!/bin/bash

# Variables
PROJECT_ID="eloquent-falcon-452317-r5"

# Allow HTTP/HTTPS traffic
gcloud compute firewall-rules create allow-http \
    --project=$PROJECT_ID \
    --allow=tcp:80,tcp:443 \
    --source-ranges=0.0.0.0/0 \
    --target-tags=http-server

# Deny SSH access from external sources
gcloud compute firewall-rules create deny-external-ssh \
    --project=$PROJECT_ID \
    --deny=tcp:22 \
    --source-ranges=0.0.0.0/0

echo "Firewall Rules Configured!"
