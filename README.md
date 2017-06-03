# AWS Rekognition Getting Started

### Commandline Tool

Need the latest version of the [AWS CLI](https://aws.amazon.com/cli/) 

### Create Bucket

Not immediately evident - you have to create a bucket in the same region of the Rekognition endpoint. I chose us-west-2.

### Query Rekognition using CLI

`aws rekognition detect-labels --image='{"S3Object": { "Bucket": "uli-rekognition", "Name": "tmp/myfile.png" } }' --region=us-west-2`

A little tricky when using shell scripting with loops and parsing, had to escape the string. Assuming that all files are uploaded into S3:

`aws rekognition detect-labels --image="{\"S3Object\": { \"Bucket\": \"uli-rekognition\", \"Name\": \"tmp/$file\" } }" --region=us-west-2`