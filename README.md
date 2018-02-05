# Scrifeo docker

Convert any video file to an optimized animated GIF via S3 based on 
[gifify](https://github.com/vvo/gifify).

## Running tests
Make sure you have `docker-compose` installed. The test script runs AWS locally using `docker-compose` and
[localstack](https://github.com/localstack/localstack) and connects it to the app.
 
```bash
$ ./scripts/test.sh
```

## Work in progress

- [x] Download video from S3 and upload gif back to S3.
- [x] Use [localstack](https://github.com/localstack/localstack) and docker-compose to test against S3 locally.
- [ ] Deploy to AWS 
