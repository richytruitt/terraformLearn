def lambda_handler(event, context):
    print("Received event:", event)
    return {
        "statusCode": 200,
        "body": "Hello from Lambda"
    }