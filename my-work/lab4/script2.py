#!/usr/bin/env python3

import boto3
import requests

bucket_name = 'ds2022-yeh5kr'
gif_url = 'https://media1.giphy.com/media/c76IJLufpNwSULPk77/giphy.gif?cid=6c09b952febmp50u5eb7m8bt2qliddpkpzswz5l8qr00e0fx&ep=v1_internal_gif_by_id&rid=giphy.gif&ct=g'
local_file_path = 'fetched_image.gif'
s3_key = 'fetched_image.gif'

response = requests.get(gif_url)
with open(local_file_path, 'wb') as f:
    f.write(response.content)

s3 = boto3.client('s3', region_name="us-east-1")
s3.upload_file(local_file_path, bucket_name, s3_key)

expires_in = 604800
presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': s3_key},
    ExpiresIn=expires_in
)

print("Presigned URL:", presigned_url)
