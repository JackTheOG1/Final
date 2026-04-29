#!/bin/bash

set -e


cd /github/workspace/t1
ls -al

echo "${INPUT_COMMENTER}"

terraform init
terraform plan -out=tfplan -var "commenter=${INPUT_COMMENTER}"
terraform apply -auto-approve tfplan
