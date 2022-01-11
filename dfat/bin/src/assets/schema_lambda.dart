const iacLambdaSchema = r"""{
  "definitions": {},
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://example.com/object1639752244.json",
  "title": "Root",
  "type": "object",
  "required": ["handler", "runtime", "memory", "timeout", "routes", "description", "environment", "anonymous"],
  "properties": {
    "description": {
      "$id": "#root/description",
      "description": "The human description of the function.",
      "title": "Description",
      "type": "string",
      "pattern": "^.*$"
    },
    "handler": {
      "$id": "#root/handler",
      "description": "The name of the executable handler.",
      "title": "Handler",
      "type": "string",
      "pattern": "^.*$"
    },
    "runtime": {
      "$id": "#root/runtime",
      "description": "The runtime used for executing the function.",
      "title": "Runtime",
      "type": "string",
      "enum": [
        "nodejs10.x",
        "nodejs12.x",
        "nodejs14.x",
        "python2.7",
        "python3.6",
        "python3.7",
        "python3.8",
        "python3.9",
        "ruby2.5",
        "ruby2.7",
        "java8",
        "java8.al2",
        "java11",
        "go1.x",
        "dotnetcore2.1",
        "dotnetcore3.1",
        "provided",
        "provided.al2"
      ],
      "pattern": "^.*$"
    },
    "memory": {
      "$id": "#root/memory",
      "description": "The amount of memory in megabytes to allocate for execution.\nRange: 128 -> 10,240",
      "title": "Memory",
      "type": "integer",
      "minimum": 128,
      "maximum": 10240
    },
    "timeout": {
      "$id": "#root/timeout",
      "description": "The number of seconds allowed for execution before the function is terminated.\nRange: 0 -> 900",
      "title": "Timeout",
      "type": "integer",
      "minimum": 0,
      "maximum": 900
    },
    "anonymous": {
      "$id": "#root/anonymous",
      "description": "Whether or not the function requires authentication.",
      "title": "Anonymous",
      "type": "boolean",
      "default": false
    },
    "routes": {
      "$id": "#root/routes",
      "description": "The API gateway routes the function responds to.",
      "title": "Routes",
      "type": "array",
      "items": {
        "$id": "#root/routes/items",
        "title": "Items",
        "type": "object",
        "required": ["method", "path"],
        "properties": {
          "method": {
            "$id": "#root/routes/items/method",
            "description": "The HTTP method this route responds for.",
            "title": "Method",
            "type": "string",
            "pattern": "^.*$",
            "enum": ["GET", "HEAD", "POST", "PUT", "DELETE", "CONNECT", "OPTIONS", "TRACE", "PATCH"]
          },
          "path": {
            "$id": "#root/routes/items/path",
            "description": "The URL path this route responds to.",
            "title": "Path",
            "type": "string",
            "pattern": "^.*$"
          }
        }
      }
    },
    "environment": {
      "$id": "#root/environment",
      "description": "The environment variables provided to the function at runtime.",
      "title": "Environment Variables",
      "type": ["object", "null"],
      "additionalProperties": {
        "type": "string"
      }
    }
  }
}
""";
