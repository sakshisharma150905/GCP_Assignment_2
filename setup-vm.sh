#!/bin/bash

# Variables
PROJECT_ID="eloquent-falcon-452317-r5"
ZONE="us-central1-c"
INSTANCE_NAME="sakshib22cs073"

# Create a VM
gcloud compute instances create $INSTANCE_NAME \
    --project=$PROJECT_ID \
    --zone=$ZONE \
    --machine-type=e2-medium \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --tags=http-server,https-server

echo "VM Created: $INSTANCE_NAME in project $PROJECT_ID"
