#!/usr/bin/env bash

set -e

# Spin docker compose

# Tell localstack to create S3 bucket
aws --endpoint-url=http://localhost:4572 s3 mb s3://test-bucket
aws --endpoint-url=http://localhost:4572 s3 ls

#

exit 1
