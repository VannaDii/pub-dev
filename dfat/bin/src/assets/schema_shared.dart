const iacSharedSchema = r"""{
  "definitions": {},
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://example.com/object1639752244.json",
  "title": "Root",
  "type": "object",
  "required": [
    "app_name",
    "app_domain",
    "local_dev_endpoint",
    "log_retention_days",
    "token_validity",
    "password_rules",
    "request_params"
  ],
  "properties": {
    "app_name": {
      "$id": "#root/app_name",
      "description": "The human-friendly name of your application. This will be slugified for infrastructure use.",
      "title": "Local Development Endpoint",
      "type": "string",
      "default": "My Great App",
      "pattern": "^(?:[\\w\\d]+?\\s?)+$"
    },
    "app_domain": {
      "$id": "#root/app_domain",
      "description": "The DNS Domain Name where your app will be hosted.",
      "title": "Local Development Endpoint",
      "type": "string",
      "default": "my-great.app",
      "pattern": "^(?:(?:[a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]).)*(?:[A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9-]*[A-Za-z0-9])$"
    },
    "local_dev_endpoint": {
      "$id": "#root/local_dev_endpoint",
      "description": "The base URL for invoking lambdas locally.",
      "title": "Local Development Endpoint",
      "type": "string",
      "default": "http://localhost:19006"
    },
    "log_retention_days": {
      "$id": "#root/log_retention_days",
      "description": "The number of days the logs will be retained.",
      "title": "Log Retention in Days",
      "type": "number",
      "default": 14
    },
    "token_validity": {
      "$id": "#root/token_validity",
      "description": "The token validity durations.\n\nFor help with these values, see: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client",
      "title": "Token Validity",
      "type": "object",
      "propertyNames": true,
      "properties": {
        "id_token": {
          "$id": "#root/token_validity/id_token",
          "description": "The validity durations for the identity token.",
          "title": "ID Token",
          "type": "object",
          "propertyNames": true,
          "properties": {
            "duration": {
              "$id": "#root/token_validity/id_token/duration",
              "description": "The number of units composing the duration.",
              "title": "Duration",
              "type": "number",
              "default": 60
            },
            "units": {
              "$id": "#root/token_validity/id_token/units",
              "description": "The type of units composing the duration.",
              "title": "Units",
              "type": "string",
              "enum": ["seconds", "minutes", "hours", "days"],
              "default": "minutes"
            }
          },
          "default": {
            "duration": 60,
            "units": "minutes"
          }
        },
        "access_token": {
          "$id": "#root/token_validity/access_token",
          "description": "The validity durations for the access token.",
          "title": "Access Token",
          "type": "object",
          "propertyNames": true,
          "properties": {
            "duration": {
              "$id": "#root/token_validity/access_token/duration",
              "description": "The number of units composing the duration.",
              "title": "Duration",
              "type": "number",
              "default": 60
            },
            "units": {
              "$id": "#root/token_validity/access_token/units",
              "description": "The type of units composing the duration.",
              "title": "Units",
              "type": "string",
              "enum": ["seconds", "minutes", "hours", "days"],
              "default": "minutes"
            }
          },
          "default": {
            "duration": 60,
            "units": "minutes"
          }
        },
        "refresh_token": {
          "$id": "#root/token_validity/refresh_token",
          "description": "The validity durations for the access token.",
          "title": "Access Token",
          "type": "object",
          "propertyNames": true,
          "properties": {
            "duration": {
              "$id": "#root/token_validity/refresh_token/duration",
              "description": "The number of units composing the duration.",
              "title": "Duration",
              "type": "number",
              "default": 1
            },
            "units": {
              "$id": "#root/token_validity/refresh_token/units",
              "description": "The type of units composing the duration.",
              "title": "Units",
              "type": "string",
              "enum": ["seconds", "minutes", "hours", "days"],
              "default": "days"
            }
          },
          "default": {
            "duration": 1,
            "units": "days"
          }
        }
      },
      "default": {
        "id_token": {
          "duration": 60,
          "units": "minutes"
        },
        "access_token": {
          "duration": 60,
          "units": "minutes"
        },
        "refresh_token": {
          "duration": 1,
          "units": "days"
        }
      }
    },
    "password_rules": {
      "$id": "#root/password_rules",
      "description": "The password complexity rules applied to the user pool.",
      "title": "Password Rules",
      "uniqueItems": true,
      "type": "object",
      "propertyNames": true,
      "properties": {
        "minimum_length": {
          "$id": "#root/password_rules/minimum_length",
          "description": "The minimum length for a valid password.",
          "title": "Minimum Length",
          "type": "number",
          "default": 10
        },
        "require_numbers": {
          "$id": "#root/password_rules/require_numbers",
          "description": "Whether or not number characters are required.",
          "title": "Require Numbers",
          "type": "boolean",
          "default": true
        },
        "require_symbols": {
          "$id": "#root/password_rules/require_symbols",
          "description": "Whether or not symbol/punctuation characters are required.",
          "title": "Require Symbols",
          "type": "boolean",
          "default": true
        },
        "require_lowercase": {
          "$id": "#root/password_rules/require_lowercase",
          "description": "Whether or not lower-case characters are required.",
          "title": "Require Lowercase",
          "type": "boolean",
          "default": true
        },
        "require_uppercase": {
          "$id": "#root/password_rules/require_uppercase",
          "description": "Whether or not upper-case characters are required.",
          "title": "Require Uppercase",
          "type": "boolean",
          "default": true
        }
      },
      "default": {
        "minimum_length": 10,
        "require_numbers": true,
        "require_symbols": true,
        "require_lowercase": true,
        "require_uppercase": true
      }
    },
    "request_params": {
      "$id": "#root/request_params",
      "description": "The request parameters to be mapped on invocation.\nFor more info, see:\n - https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims\n - https://stackoverflow.com/a/55941730/983169\n- https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-logging-variables.html",
      "title": "Request Parameters",
      "uniqueItems": true,
      "type": "object",
      "maxProperties": 50,
      "examples": [
        {
          "append:header.X-User-Id": "$context.authorizer.claims.sub",
          "append:header.X-User-Username": "$context.authorizer.preferred_username",
          "append:header.X-User-Nickname": "$context.authorizer.nickname",
          "append:header.X-User-GivenName": "$context.authorizer.given_name",
          "append:header.X-User-FamilyName": "$context.authorizer.family_name",
          "append:header.X-User-Email": "$context.authorizer.email",
          "append:header.X-User-PhoneNumber": "$context.authorizer.phone_number",
          "append:header.X-User-BirthDate": "$context.authorizer.birthdate",
          "append:header.X-User-ZoneInfo": "$context.authorizer.zoneinfo",
          "append:header.X-User-Locale": "$context.authorizer.locale",
          "append:header.X-User-Picture": "$context.authorizer.picture",
          "append:header.X-User-Address": "$context.authorizer.address",
          "append:header.X-User-LastUpdated": "$context.authorizer.updated_at"
        }
      ],
      "additionalProperties": {
        "type": "string"
      }
    }
  }
}
""";
