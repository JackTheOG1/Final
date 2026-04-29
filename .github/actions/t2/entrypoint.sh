#!/bin/bash
set -e

cd /github/workspace/t1
ls -al

export ARM_USE_CLI=false

terraform init
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
