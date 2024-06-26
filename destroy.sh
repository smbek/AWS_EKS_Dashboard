#!/bin/bash
# For Ubuntu 22.04

set -e # Exit script immediately on first error.

# # Log all output to file
# exec >> /var/log/init-script.log 2>&1

echo "Starting initialization script..."

function destroy_cluster() {
    cd k8s
    terraform destroy --auto-approve
}



destroy_cluster