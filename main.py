from fastapi import FastAPI
import boto3, os, hashlib

app = FastAPI()
# We connect to DynamoDB to store our URLs
dynamodb = boto3.resource("dynamodb", region_name="us-east-1")

@app.get("/")
def home():
    return {"message": "DevOps API is Running!"}

@app.post("/shorten")
def shorten_url(long_url: str):
    short_id = hashlib.md5(long_url.encode()).hexdigest()[:6]
    return {"short_id": short_id, "long_url": long_url}
