// Package docs Code generated by swaggo/swag. DO NOT EDIT
package docs

import "github.com/swaggo/swag"

const docTemplate = `{
    "schemes": {{ marshal .Schemes }},
    "swagger": "2.0",
    "info": {
        "description": "{{escape .Description}}",
        "title": "{{.Title}}",
        "termsOfService": "http://swagger.io/terms/",
        "contact": {
            "name": "API Support",
            "url": "http://www.swagger.io/support",
            "email": "support@swagger.io"
        },
        "license": {
            "name": "Apache 2.0",
            "url": "http://www.apache.org/licenses/LICENSE-2.0.html"
        },
        "version": "{{.Version}}"
    },
    "host": "{{.Host}}",
    "basePath": "{{.BasePath}}",
    "paths": {
        "/hello": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "tags": [
                    "Tests"
                ],
                "summary": "Saying hello",
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "$ref": "#/definitions/views.ResponseMessage"
                        }
                    },
                    "500": {
                        "description": "Invalid file",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    }
                }
            }
        },
        "/v1/auth/refresh": {
            "post": {
                "consumes": [
                    "application/json"
                ],
                "produces": [
                    "application/json"
                ],
                "tags": [
                    "Auth"
                ],
                "summary": "Refresh",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Bearer RefreshToken",
                        "name": "Authorization",
                        "in": "header",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "$ref": "#/definitions/views.TokensResponse"
                        }
                    },
                    "400": {
                        "description": "Couldn't find token",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "404": {
                        "description": "Couldn't find user",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "500": {
                        "description": "Couldn't create tokens",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    }
                }
            }
        },
        "/v1/auth/sign-in": {
            "post": {
                "consumes": [
                    "application/json"
                ],
                "produces": [
                    "application/json"
                ],
                "tags": [
                    "Auth"
                ],
                "summary": "Sign In",
                "parameters": [
                    {
                        "description": "Authentication",
                        "name": "request",
                        "in": "body",
                        "required": true,
                        "schema": {
                            "$ref": "#/definitions/views.SignInRequest"
                        }
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "$ref": "#/definitions/views.TokensResponse"
                        }
                    },
                    "400": {
                        "description": "Invalid Data",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "401": {
                        "description": "Incorrect email or password",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "404": {
                        "description": "Email not found",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "500": {
                        "description": "Couldn't create tokens",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    }
                }
            }
        },
        "/v1/auth/sign-out": {
            "post": {
                "consumes": [
                    "application/json"
                ],
                "produces": [
                    "application/json"
                ],
                "tags": [
                    "Auth"
                ],
                "summary": "Sign Out",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Bearer AccessToken",
                        "name": "Authorization",
                        "in": "header",
                        "required": true
                    }
                ],
                "responses": {
                    "204": {
                        "description": "No Content"
                    },
                    "400": {
                        "description": "Couldn't find token",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    },
                    "500": {
                        "description": "Couldn't revoke session",
                        "schema": {
                            "$ref": "#/definitions/views.ErrorResponse"
                        }
                    }
                }
            }
        }
    },
    "definitions": {
        "views.ErrorResponse": {
            "type": "object",
            "properties": {
                "error": {
                    "type": "string"
                }
            }
        },
        "views.ResponseMessage": {
            "type": "object",
            "properties": {
                "message": {
                    "type": "string"
                }
            }
        },
        "views.SignInRequest": {
            "type": "object",
            "properties": {
                "password": {
                    "type": "string"
                },
                "phone": {
                    "type": "string"
                }
            }
        },
        "views.TokensResponse": {
            "type": "object",
            "properties": {
                "access_token": {
                    "type": "string"
                },
                "refresh_token": {
                    "type": "string"
                }
            }
        }
    },
    "securityDefinitions": {
        "Bearer": {
            "description": "Type \"Bearer\" followed by a space and JWT token.",
            "type": "apiKey",
            "name": "Authorization",
            "in": "header"
        }
    }
}`

// SwaggerInfo holds exported Swagger Info so clients can modify it
var SwaggerInfo = &swag.Spec{
	Version:          "1.0",
	Host:             "petstore.swagger.io",
	BasePath:         "/v2",
	Schemes:          []string{},
	Title:            "POLICE API",
	Description:      "This is a sample server POLICE.",
	InfoInstanceName: "swagger",
	SwaggerTemplate:  docTemplate,
	LeftDelim:        "{{",
	RightDelim:       "}}",
}

func init() {
	swag.Register(SwaggerInfo.InstanceName(), SwaggerInfo)
}
