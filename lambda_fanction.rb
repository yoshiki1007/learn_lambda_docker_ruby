require 'json'

def lambda_handler(event:, context:)
  {
    "statusCode": 200,
    "body": {
      "message": "hello world",
    }
  }
end
