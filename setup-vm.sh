#!/bin/bash

# Variables
PROJECT_ID="eloquent-falcon-452317-r5"
ZONE="us-central1-c"
INSTANCE_NAME="sakshib22cs073"

# Create a VM with Ubuntu 20.04
gcloud compute instances create $INSTANCE_NAME \
    --project=$PROJECT_ID \
    --zone=$ZONE \
    --machine-type=e2-medium \
    --image-family=ubuntu-2004-lts \  
    --image-project=ubuntu-os-cloud \ 
    --tags=http-server,https-server

echo "VM Created: $INSTANCE_NAME in project $PROJECT_ID"
