require 'json'

def lambda_handler(event:, context:)
  my_hash = {
    "statusCode" => 200,
    "body" => {
      "message" => "hello world"
    }
  }
  JSON.generate(my_hash)
end
