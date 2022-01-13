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
    "cognito": {
      "$id": "#root/cognito",
      "description": "The AWS Cognito settings.",
      "title": "Cognito Settings",
      "type": "object",
      "propertyNames": true,
      "properties": {
        "logo_path": {
          "$id": "#root/cognito/logo_path",
          "description": "The path to a logo file for Cognito. MUST not exceed 100kb.\n\nSee:\nhttps://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-app-ui-customization.html#cognito-user-pools-app-ui-customization-logo",
          "title": "Cognito Logo Path",
          "type": "string",
          "default": "../shared/assets/cognito_logo.png"
        },
        "css_path": {
          "$id": "#root/cognito/css_path",
          "description": "The path to a CSS customization file for Cognito.\n\nSample:\nhttps://d3oia8etllorh5.cloudfront.net/20201028181005/css/cognito-login.css\n\nSee:\nhttps://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-app-ui-customization.html#cognito-user-pools-app-ui-customization-css",
          "title": "Cognito CSS Path",
          "type": "string",
          "default": "../shared/assets/cognito_styles.css"
        },
        "identity_providers": {
          "$id": "#root/cognito/identity_providers",
          "description": "A collection of identity providers to configure against the user pool.\n\nFor quick links to setup supported providers, see:\n - https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-social-idp.html\n - https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html",
          "title": "Identity Providers (OpenId, Apple, Facebook, Google, Amazon, etc.)",
          "type": "object",
          "propertyNames": true,
          "properties": {
            "facebook": {
              "$id": "#root/cognito/identity_providers/facebook",
              "required": ["name", "type", "scopes", "client_id", "client_secret_var", "mapping"],
              "description": "The Facebook identity provider configuration for the user pool.",
              "title": "Facebook Identity Provider Configuration",
              "type": "object",
              "propertyNames": true,
              "properties": {
                "name": {
                  "$id": "#root/cognito/identity_providers/facebook/name",
                  "description": "The name of the identity provider.",
                  "title": "Identity Provider Name",
                  "type": "string",
                  "pattern": "Facebook",
                  "default": "Facebook"
                },
                "type": {
                  "$id": "#root/cognito/identity_providers/facebook/type",
                  "description": "The type of the identity provider.",
                  "title": "Identity Provider Type",
                  "type": "string",
                  "pattern": "Facebook",
                  "default": "Facebook"
                },
                "scopes": {
                  "$id": "#root/cognito/identity_providers/facebook/scopes",
                  "description": "The authorize scopes of the identity provider.\n\nSee: https://developers.facebook.com/docs/permissions/reference",
                  "title": "Identity Provider Authorize Scopes",
                  "type": "array",
                  "uniqueItems": true,
                  "items": { "type": "string" },
                  "default": ["email", "public_profile"]
                },
                "api_version": {
                  "$id": "#root/cognito/identity_providers/facebook/api_version",
                  "description": "The Facebook API version used for communication.\n\nSee: https://developers.facebook.com/docs/graph-api/guides/versioning",
                  "title": "Facebook API Version",
                  "type": "string",
                  "pattern": "v\\d+\\.?\\d*",
                  "default": "v6.0"
                },
                "client_id": {
                  "$id": "#root/cognito/identity_providers/facebook/client_id",
                  "description": "The `client_id` of the identity provider.",
                  "title": "Identity Provider Client Id",
                  "type": "string",
                  "default": "<YOUR_CLIENT_ID_VALUE_FROM_FACEBOOK>"
                },
                "client_secret_var": {
                  "$id": "#root/cognito/identity_providers/facebook/client_secret_var",
                  "description": "The name of an environment variable (without `$` or other tokens) where the `client_secret` can be obtained during deployment.",
                  "title": "Identity Provider Client Secret Variable",
                  "type": "string",
                  "default": "AUTH_CLIENT_SECRET_FACEBOOK"
                },
                "mapping": {
                  "$id": "#root/cognito/identity_providers/facebook/mapping",
                  "description": "The attribute map between the user pool and the identity provider.\n\nSee: https://developers.facebook.com/docs/graph-api/reference/user",
                  "title": "Identity Provider Attribute Map",
                  "type": "object",
                  "minItems": 1,
                  "maxItems": 32,
                  "additionalProperties": { "type": "string" },
                  "default": {
                    "id": "sub",
                    "email": "email",
                    "picture": "picture",
                    "last_name": "family_name",
                    "first_name": "given_name"
                  }
                }
              },
              "default": {
                "name": "Facebook",
                "type": "Facebook",
                "api_version": "v6.0",
                "client_id": "<YOUR_CLIENT_ID_VALUE_FROM_FACEBOOK>",
                "client_secret_var": "AUTH_CLIENT_SECRET_FACEBOOK",
                "scopes": ["email", "public_profile"],
                "mapping": {
                  "id": "sub",
                  "email": "email",
                  "picture": "picture",
                  "last_name": "family_name",
                  "first_name": "given_name"
                }
              }
            },
            "google": {
              "$id": "#root/cognito/identity_providers/google",
              "required": ["name", "type", "scopes", "client_id", "client_secret_var", "mapping"],
              "description": "The Google identity provider configuration for the user pool.",
              "title": "Google Identity Provider Configuration",
              "type": "object",
              "propertyNames": true,
              "properties": {
                "name": {
                  "$id": "#root/cognito/identity_providers/google/name",
                  "description": "The name of the identity provider.",
                  "title": "Identity Provider Name",
                  "type": "string",
                  "pattern": "Google",
                  "default": "Google"
                },
                "type": {
                  "$id": "#root/cognito/identity_providers/google/type",
                  "description": "The type of the identity provider.",
                  "title": "Identity Provider Type",
                  "type": "string",
                  "pattern": "Google",
                  "default": "Google"
                },
                "scopes": {
                  "$id": "#root/cognito/identity_providers/google/scopes",
                  "description": "The authorize scopes of the identity provider. The value `openid` MUST be first in the list.\n\nSee: https://developers.google.com/identity/protocols/oauth2/openid-connect#scope-param",
                  "title": "Identity Provider Authorize Scopes",
                  "type": "array",
                  "uniqueItems": true,
                  "items": { "type": "string", "required": ["openid"] },
                  "default": ["openid", "profile", "email"]
                },
                "client_id": {
                  "$id": "#root/cognito/identity_providers/google/client_id",
                  "description": "The `client_id` of the identity provider.",
                  "title": "Identity Provider Client Id",
                  "type": "string",
                  "default": "<YOUR_CLIENT_ID_VALUE_FROM_GOOGLE>"
                },
                "client_secret_var": {
                  "$id": "#root/cognito/identity_providers/google/client_secret_var",
                  "description": "The name of an environment variable (without `$` or other tokens) where the `client_secret` can be obtained during deployment.",
                  "title": "Identity Provider Client Secret Variable",
                  "type": "string",
                  "default": "AUTH_CLIENT_SECRET_GOOGLE"
                },
                "mapping": {
                  "$id": "#root/cognito/identity_providers/google/mapping",
                  "description": "The attribute map between the user pool and the identity provider.\n\nSee: https://developers.facebook.com/docs/graph-api/reference/user",
                  "title": "Identity Provider Attribute Map",
                  "type": "object",
                  "minItems": 1,
                  "maxItems": 32,
                  "additionalProperties": { "type": "string" },
                  "default": {
                    "sub": "sub",
                    "email": "email",
                    "picture": "picture",
                    "family_name": "family_name",
                    "given_name": "given_name"
                  }
                }
              },
              "default": {
                "name": "Google",
                "type": "Google",
                "client_id": "<YOUR_CLIENT_ID_VALUE_FROM_GOOGLE>",
                "client_secret_var": "AUTH_CLIENT_SECRET_GOOGLE",
                "scopes": ["openid", "profile", "email"],
                "mapping": {
                  "sub": "sub",
                  "email": "email",
                  "picture": "picture",
                  "family_name": "family_name",
                  "given_name": "given_name"
                }
              }
            },
            "amazon": {
              "$id": "#root/cognito/identity_providers/amazon",
              "required": ["name", "type", "scopes", "client_id", "client_secret_var", "mapping"],
              "description": "The Amazon identity provider configuration for the user pool.",
              "title": "Amazon Identity Provider Configuration",
              "type": "object",
              "propertyNames": true,
              "properties": {
                "name": {
                  "$id": "#root/cognito/identity_providers/amazon/name",
                  "description": "The name of the identity provider.",
                  "title": "Identity Provider Name",
                  "type": "string",
                  "pattern": "Amazon",
                  "default": "Amazon"
                },
                "type": {
                  "$id": "#root/cognito/identity_providers/amazon/type",
                  "description": "The type of the identity provider.",
                  "title": "Identity Provider Type",
                  "type": "string",
                  "pattern": "LoginWithAmazon",
                  "default": "LoginWithAmazon"
                },
                "scopes": {
                  "$id": "#root/cognito/identity_providers/amazon/scopes",
                  "description": "The authorize scopes of the identity provider.",
                  "title": "Identity Provider Authorize Scopes",
                  "type": "array",
                  "uniqueItems": true,
                  "items": { "type": "string", "required": ["profile", "profile:user_id"] },
                  "default": ["profile", "profile:user_id", "postal_code"]
                },
                "client_id": {
                  "$id": "#root/cognito/identity_providers/amazon/client_id",
                  "description": "The `client_id` of the identity provider.",
                  "title": "Identity Provider Client Id",
                  "type": "string",
                  "default": "<YOUR_CLIENT_ID_VALUE_FROM_AMAZON>"
                },
                "client_secret_var": {
                  "$id": "#root/cognito/identity_providers/amazon/client_secret_var",
                  "description": "The name of an environment variable (without `$` or other tokens) where the `client_secret` can be obtained during deployment.",
                  "title": "Identity Provider Client Secret Variable",
                  "type": "string",
                  "default": "AUTH_CLIENT_SECRET_AMAZON"
                },
                "mapping": {
                  "$id": "#root/cognito/identity_providers/amazon/mapping",
                  "description": "The attribute map between the user pool and the identity provider.",
                  "title": "Identity Provider Attribute Map",
                  "type": "object",
                  "minItems": 1,
                  "maxItems": 32,
                  "additionalProperties": { "type": "string" },
                  "default": {
                    "sub": "sub",
                    "email": "email",
                    "picture": "picture",
                    "family_name": "family_name",
                    "given_name": "given_name"
                  }
                }
              },
              "default": {
                "name": "Amazon",
                "type": "LoginWithAmazon",
                "client_id": "<YOUR_CLIENT_ID_VALUE_FROM_AMAZON>",
                "client_secret_var": "AUTH_CLIENT_SECRET_AMAZON",
                "scopes": ["profile", "profile:user_id", "postal_code"],
                "mapping": {
                  "sub": "sub",
                  "email": "email",
                  "picture": "picture",
                  "family_name": "family_name",
                  "given_name": "given_name"
                }
              }
            },
            "apple": {
              "$id": "#root/cognito/identity_providers/apple",
              "required": ["name", "type", "scopes", "client_id", "team_id", "key_id", "private_key_var", "mapping"],
              "description": "The Facebook identity provider configuration for the user pool.",
              "title": "Facebook Identity Provider Configuration",
              "type": "object",
              "propertyNames": true,
              "properties": {
                "name": {
                  "$id": "#root/cognito/identity_providers/apple/name",
                  "description": "The name of the identity provider.",
                  "title": "Identity Provider Name",
                  "type": "string",
                  "pattern": "Apple",
                  "default": "Apple"
                },
                "type": {
                  "$id": "#root/cognito/identity_providers/apple/type",
                  "description": "The type of the identity provider.",
                  "title": "Identity Provider Type",
                  "type": "string",
                  "pattern": "SignInWithApple",
                  "default": "SignInWithApple"
                },
                "scopes": {
                  "$id": "#root/cognito/identity_providers/apple/scopes",
                  "description": "The authorize scopes of the identity provider.",
                  "title": "Identity Provider Authorize Scopes",
                  "type": "array",
                  "uniqueItems": true,
                  "items": { "type": "string" },
                  "default": ["openid", "name", "email"]
                },
                "client_id": {
                  "$id": "#root/cognito/identity_providers/apple/client_id",
                  "description": "The `client_id` of the identity provider.",
                  "title": "Identity Provider Client Id",
                  "type": "string",
                  "default": "<YOUR_CLIENT_ID_VALUE_FROM_APPLE>"
                },
                "team_id": {
                  "$id": "#root/cognito/identity_providers/apple/team_id",
                  "description": "The `team_id` of the identity provider.",
                  "title": "Identity Provider Team Id",
                  "type": "string",
                  "default": "<YOUR_TEAM_ID_VALUE_FROM_APPLE>"
                },
                "key_id": {
                  "$id": "#root/cognito/identity_providers/apple/key_id",
                  "description": "The `key_id` of the identity provider.",
                  "title": "Identity Provider Key Id",
                  "type": "string",
                  "default": "<YOUR_KEY_ID_VALUE_FROM_APPLE>"
                },
                "private_key_var": {
                  "$id": "#root/cognito/identity_providers/apple/private_key_var",
                  "description": "The name of an environment variable (without `$` or other tokens) where the `private_key` can be obtained during deployment.",
                  "title": "Identity Provider Private Key Variable",
                  "type": "string",
                  "default": "AUTH_PRIVATE_KEY_APPLE"
                },
                "mapping": {
                  "$id": "#root/cognito/identity_providers/apple/mapping",
                  "description": "The attribute map between the user pool and the identity provider.\n\nSee: https://developers.facebook.com/docs/graph-api/reference/user",
                  "title": "Identity Provider Attribute Map",
                  "type": "object",
                  "minItems": 1,
                  "maxItems": 32,
                  "additionalProperties": { "type": "string" },
                  "default": {
                    "sub": "sub",
                    "email": "email",
                    "picture": "picture",
                    "given_name": "given_name",
                    "family_name": "family_name"
                  }
                }
              },
              "default": {
                "name": "Apple",
                "type": "SignInWithApple",
                "client_id": "<YOUR_CLIENT_ID_VALUE_FROM_APPLE>",
                "team_id": "<YOUR_TEAM_ID_VALUE_FROM_APPLE>",
                "key_id": "<YOUR_KEY_ID_VALUE_FROM_APPLE>",
                "private_key_var": "AUTH_PRIVATE_KEY_APPLE",
                "scopes": ["openid", "name", "email"],
                "mapping": {
                  "sub": "sub",
                  "email": "email",
                  "picture": "picture",
                  "given_name": "given_name",
                  "family_name": "family_name"
                }
              }
            },
            "oidc": {
              "$id": "#root/cognito/identity_providers/oidc",
              "description": "A list of OpenID Connect identity provider configurations for the user pool.",
              "title": "OpenID Connect Identity Provider Configurations",
              "type": "array",
              "items": {
                "required": [
                  "name",
                  "type",
                  "client_id",
                  "client_secret_var",
                  "attributes_request_method",
                  "issuer",
                  "scopes"
                ],
                "description": "An OpenID Connect identity provider configuration for the user pool.",
                "title": "OpenID Connect Identity Provider Configuration",
                "type": "object",
                "propertyNames": true,
                "properties": {
                  "name": {
                    "$id": "#root/cognito/identity_providers/oidc/name",
                    "description": "The name of the identity provider.",
                    "title": "Identity Provider Name",
                    "type": "string",
                    "pattern": "[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+",
                    "minLength": 1,
                    "maxLength": 32,
                    "default": "MyOIDCProvider"
                  },
                  "type": {
                    "$id": "#root/cognito/identity_providers/oidc/type",
                    "description": "The type of the identity provider.",
                    "title": "Identity Provider Type",
                    "type": "string",
                    "pattern": "OIDC",
                    "default": "OIDC"
                  },
                  "client_id": {
                    "$id": "#root/cognito/identity_providers/oidc/client_id",
                    "description": "The `client_id` of the identity provider.",
                    "title": "Identity Provider Client Id",
                    "type": "string",
                    "default": "<YOUR_OIDC_CLIENT_ID_VALUE>"
                  },
                  "client_secret_var": {
                    "$id": "#root/cognito/identity_providers/apple/client_secret_var",
                    "description": "The name of an environment variable (without `$` or other tokens) where the `client_secret` can be obtained during deployment.",
                    "title": "Identity Provider Private Key Variable",
                    "type": "string",
                    "default": "AUTH_CLIENT_SECRET_OIDC_SOMEONE"
                  },
                  "attributes_request_method": {
                    "$id": "#root/cognito/identity_providers/oidc/attributes_request_method",
                    "description": "The request method (GET or POST) for obtaining user attributes from the identity provider.",
                    "title": "Identity Provider Attribute Request Method",
                    "type": "string",
                    "enum": ["GET", "POST"],
                    "default": "POST"
                  },
                  "issuer": {
                    "$id": "#root/cognito/identity_providers/oidc/issuer",
                    "description": "The `issuer` of the identity provider. This should look something like https://example.com\n\n Identity Platform uses this URL to locate the OIDC discovery document (typically found at /.well-known/openid-configuration), which specifies the provider's OAuth endpoints and public keys.",
                    "title": "Identity Provider Issuer",
                    "type": "string",
                    "default": "https://example.com"
                  },
                  "scopes": {
                    "$id": "#root/cognito/identity_providers/oidc/scopes",
                    "description": "The authorize scopes of the identity provider.",
                    "title": "Identity Provider Authorize Scopes",
                    "type": "array",
                    "uniqueItems": true,
                    "items": { "type": "string" },
                    "default": ["openid", "email"]
                  },
                  "authorize_url": {
                    "$id": "#root/cognito/identity_providers/oidc/authorize_url",
                    "description": "The `authorize_url` of the identity provider, if not available from discovery URL derived from `issuer` value",
                    "title": "Identity Provider Authorize Url",
                    "type": "string",
                    "default": "<YOUR_OIDC_AUTHORIZE_URL>"
                  },
                  "token_url": {
                    "$id": "#root/cognito/identity_providers/oidc/token_url",
                    "description": "The `token_url` of the identity provider, if not available from discovery URL derived from `issuer` value",
                    "title": "Identity Provider Token Url",
                    "type": "string",
                    "default": "<YOUR_OIDC_TOKEN_URL>"
                  },
                  "attributes_url": {
                    "$id": "#root/cognito/identity_providers/oidc/attributes_url",
                    "description": "The `attributes_url` of the identity provider, if not available from discovery URL derived from `issuer` value",
                    "title": "Identity Provider Attributes Url",
                    "type": "string",
                    "default": "<YOUR_OIDC_ATTRIBUTES_URL>"
                  },
                  "jwks_uri": {
                    "$id": "#root/cognito/identity_providers/oidc/jwks_uri",
                    "description": "The `jwks_uri` of the identity provider, if not available from discovery URL derived from `issuer` value",
                    "title": "Identity Provider JWKs Url",
                    "type": "string",
                    "default": "<YOUR_OIDC_JWKS_URL>"
                  },
                  "mapping": {
                    "$id": "#root/cognito/identity_providers/oidc/mapping",
                    "description": "The attribute map between the user pool and the identity provider.",
                    "title": "Identity Provider Attribute Map",
                    "type": "object",
                    "minItems": 1,
                    "maxItems": 32,
                    "additionalProperties": { "type": "string" },
                    "default": {
                      "sub": "sub",
                      "email": "email",
                      "locale": "locale",
                      "address": "address",
                      "picture": "picture",
                      "nickname": "nickname",
                      "zoneinfo": "zoneinfo",
                      "birthdate": "birthdate",
                      "given_name": "given_name",
                      "family_name": "family_name",
                      "phone_number": "phone_number"
                    }
                  }
                },
                "default": {
                  "name": "MyOIDCProvider",
                  "type": "OIDC",
                  "client_id": "<YOUR_OIDC_CLIENT_ID_VALUE>",
                  "client_secret_var": "AUTH_CLIENT_SECRET_OIDC_SOMEONE",
                  "attributes_request_method": "GET",
                  "issuer": "https://example.com",
                  "scopes": ["openid", "email"],
                  "mapping": {
                    "sub": "sub",
                    "email": "email",
                    "locale": "locale",
                    "address": "address",
                    "picture": "picture",
                    "nickname": "nickname",
                    "zoneinfo": "zoneinfo",
                    "birthdate": "birthdate",
                    "given_name": "given_name",
                    "family_name": "family_name",
                    "phone_number": "phone_number"
                  }
                }
              },
              "default": [
                {
                  "name": "MyOIDCProvider",
                  "type": "OIDC",
                  "client_id": "<YOUR_OIDC_CLIENT_ID_VALUE>",
                  "client_secret_var": "AUTH_CLIENT_SECRET_OIDC_SOMEONE",
                  "attributes_request_method": "GET",
                  "issuer": "https://example.com",
                  "scopes": ["openid", "email"],
                  "mapping": {
                    "sub": "sub",
                    "email": "email",
                    "locale": "locale",
                    "address": "address",
                    "picture": "picture",
                    "nickname": "nickname",
                    "zoneinfo": "zoneinfo",
                    "birthdate": "birthdate",
                    "given_name": "given_name",
                    "family_name": "family_name",
                    "phone_number": "phone_number"
                  }
                }
              ]
            },
            "saml": {
              "$id": "#root/cognito/identity_providers/saml",
              "description": "A list of SAML identity provider configurations for the user pool.",
              "title": "SAML Identity Provider Configurations",
              "type": "array",
              "items": {
                "required": ["name", "type", "metadata_url", "idp_sign_out_url", "mapping"],
                "description": "An OpenID Connect identity provider configuration for the user pool.",
                "title": "OpenID Connect Identity Provider Configuration",
                "type": "object",
                "propertyNames": true,
                "properties": {
                  "name": {
                    "$id": "#root/cognito/identity_providers/saml/name",
                    "description": "The name of the identity provider.",
                    "title": "Identity Provider Name",
                    "type": "string",
                    "pattern": "^[^_][\\w\\d_+=,\\.@\\-]+[^_]$",
                    "minLength": 1,
                    "maxLength": 32,
                    "default": "MySAMLProvider"
                  },
                  "type": {
                    "$id": "#root/cognito/identity_providers/saml/type",
                    "description": "The type of the identity provider.",
                    "title": "Identity Provider Type",
                    "type": "string",
                    "pattern": "SAML",
                    "default": "SAML"
                  },
                  "metadata_url": {
                    "$id": "#root/cognito/identity_providers/saml/metadata_url",
                    "description": "The URL to the Metadata for the identity provider.",
                    "title": "Identity Provider Metadata",
                    "type": "string",
                    "default": "<YOUR_SAML_METADATA_URL>"
                  },
                  "idp_sign_out_url": {
                    "$id": "#root/cognito/identity_providers/saml/idp_sign_out_url",
                    "description": "The URL to sign-out of of the identity provider.",
                    "title": "Identity Provider Sign-out URL",
                    "type": "string",
                    "default": "<YOUR_SAML_SIGN_OUT_URL>"
                  },
                  "mapping": {
                    "$id": "#root/cognito/identity_providers/saml/mapping",
                    "description": "The attribute map between the user pool and the identity provider.",
                    "title": "Identity Provider Attribute Map",
                    "type": "object",
                    "minItems": 1,
                    "maxItems": 32,
                    "additionalProperties": { "type": "string" },
                    "default": {
                      "sub": "sub",
                      "email": "email",
                      "locale": "locale",
                      "address": "address",
                      "picture": "picture",
                      "nickname": "nickname",
                      "zoneinfo": "zoneinfo",
                      "birthdate": "birthdate",
                      "given_name": "given_name",
                      "family_name": "family_name",
                      "phone_number": "phone_number"
                    }
                  }
                },
                "default": {
                  "name": "MySAMLProvider",
                  "type": "SAML",
                  "metadata_url": "<YOUR_SAML_METADATA_URL>",
                  "idp_sign_out_url": "<YOUR_SAML_SIGN_OUT_URL>",
                  "mapping": {
                    "sub": "sub",
                    "email": "email",
                    "locale": "locale",
                    "address": "address",
                    "picture": "picture",
                    "nickname": "nickname",
                    "zoneinfo": "zoneinfo",
                    "birthdate": "birthdate",
                    "given_name": "given_name",
                    "family_name": "family_name",
                    "phone_number": "phone_number"
                  }
                }
              },
              "default": [
                {
                  "name": "MySAMLProvider",
                  "type": "SAML",
                  "metadata_url": "<YOUR_SAML_METADATA_URL>",
                  "idp_sign_out_url": "<YOUR_SAML_SIGN_OUT_URL>",
                  "mapping": {
                    "sub": "sub",
                    "email": "email",
                    "locale": "locale",
                    "address": "address",
                    "picture": "picture",
                    "nickname": "nickname",
                    "zoneinfo": "zoneinfo",
                    "birthdate": "birthdate",
                    "given_name": "given_name",
                    "family_name": "family_name",
                    "phone_number": "phone_number"
                  }
                }
              ]
            }
          }
        }
      }
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
      "additionalProperties": {
        "type": "string"
      },
      "default": {
        "append:header.X-User-Id": "$context.authorizer.claims.sub",
        "append:header.X-User-Username": "$context.authorizer.preferred_username",
        "append:header.X-User-GivenName": "$context.authorizer.given_name",
        "append:header.X-User-FamilyName": "$context.authorizer.family_name",
        "append:header.X-User-Email": "$context.authorizer.email",
        "append:header.X-User-Picture": "$context.authorizer.picture",
        "append:header.X-User-LastUpdated": "$context.authorizer.updated_at"
      }
    }
  }
}
""";
