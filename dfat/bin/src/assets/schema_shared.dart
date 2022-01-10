const iacSharedSchema = r"""{
  "definitions": {},
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://example.com/object1639752244.json",
  "title": "Root",
  "type": "object",
  "required": ["request_params"],
  "properties": {
    "request_params": {
      "$id": "#root/request_params",
      "description": "The request parameters to be mapped on invocation.\nFor more info, see:\n - https://stackoverflow.com/a/55941730/983169\n- https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-logging-variables.html",
      "title": "Request Parameters",
      "uniqueItems": true,
      "type": ["object", "null"],
      "maxProperties": 50,
      "examples": [
        {
          "append:header.X-UserId": "$context.authorizer.claims.sub",
          "append:header.X-UserName": "$context.authorizer.claims[\"cognito:username\"]"
        }
      ],
      "additionalProperties": {
        "type": "string"
      }
    }
  }
}
""";
