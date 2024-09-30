#!/usr/bin/python3

import boto3

s3 = boto3.client('s3', region_name='us-east-1')

bucket_name = 'ds2022-yeh5kr'
s3_key = 'mcdonalds.jpg'

resp = s3.put_object(
    Body=s3_key,
    Bucket=bucket_name,
    Key=s3_key,
    ACL='public-read'
)

public_url = f"https://s3.amazonaws.com/{bucket_name}/{s3_key}"
print(f"Public URL: {public_url}")

