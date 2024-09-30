#!/bin/bash

BUCKET_NAME="ds2022-yeh5kr" 
FILE_PATH="mcdonalds.jpg"  
EXPIRATION_TIME=604800  

echo "Uploading $FILE_PATH to s3://$BUCKET_NAME/"
aws s3 cp "$FILE_PATH" "s3://$BUCKET_NAME/"

echo "Generating URL with 7 day expiration..."
PRESIGNED_URL=$(aws s3 presign "s3://$BUCKET_NAME/$FILE_PATH" --expires-in $EXPIRATION_TIME)

echo "Presigned URL: $PRESIGNED_URL"

