#!/usr/bin/env bash

set -e

BUCKET_URL="s3://${BUCKET}"

aws --endpoint-url="${AWS_ENDPOINT}" s3 ls "$BUCKET_URL"
