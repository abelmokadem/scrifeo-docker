#!/usr/bin/env bash

set -e

echo "AWS test data injection started"

BUCKET_URL="s3://${BUCKET}"

aws --endpoint-url="${AWS_ENDPOINT}" s3 mb "$BUCKET_URL"

aws --endpoint-url="${AWS_ENDPOINT}" s3 cp fixtures/movie.mp4 "$BUCKET_URL"

aws --endpoint-url="${AWS_ENDPOINT}" s3 ls "$BUCKET_URL"

echo "AWS test data injection finished"
