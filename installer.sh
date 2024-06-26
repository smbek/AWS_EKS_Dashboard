#!/bin/bash
# For Ubuntu 22.04

set -e # Exit script immediately on first error.

# # Log all output to file
# exec >> /var/log/init-script.log 2>&1

echo "Starting initialization script..."

function create_cluster() {
    cd k8s
    terraform init -upgrade
    terraform apply --auto-approve
}

function dashboard() {
    cd ../dashboard
    sudo ./dashboard.sh
}

create_cluster
sleep 60
dashboard
