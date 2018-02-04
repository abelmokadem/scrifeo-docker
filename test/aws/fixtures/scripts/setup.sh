#!/usr/bin/env bash

set -e

aws --endpoint-url=http://aws:4572 s3 mb s3://test-bucket
aws --endpoint-url=http://aws:4572 s3 ls
