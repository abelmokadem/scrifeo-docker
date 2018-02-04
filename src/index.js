const gifify = require('gifify');
const AWS = require('aws-sdk');
const UploadStream = require("s3-stream-upload");

const AWS_ENDPOINT = process.env.AWS_ENDPOINT
const BUCKET = process.env.BUCKET

const s3 = new AWS.S3({
  endpoint: new AWS.Endpoint(AWS_ENDPOINT),
  s3ForcePathStyle: true
});

const getObjectOptions = {
  Bucket: BUCKET,
  Key: 'movie.mp4'
}

const videoStream = s3.getObject(getObjectOptions).createReadStream()

const options = {
  resize: '200:-1',
  from: 30,
  to: 35
};

gifify(videoStream, options)
  .pipe(UploadStream(s3, { Bucket: BUCKET, Key: 'movie.gif' }))
  .on("error", function (err) {
    console.error(err);
  })
  .on("finish", function () {
    console.log("File uploaded!");
  });
