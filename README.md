# gh-actions-swagger-to-postman [![Create Actions Release](https://github.com/antyung88/gh-actions-swagger-to-postman/actions/workflows/release.yml/badge.svg)](https://github.com/antyung88/gh-actions-swagger-to-postman/actions/workflows/release.yml)
Convert Swagger JSON URL To Postman Collection via Github Actions + Artifacts

# Usage- GitHub Actions

```
      - uses: actions/checkout@v3
      - uses: antyung88/gh-actions-swagger-to-postman@v2.1
        with:
          url: https://petstore3.swagger.io/api/v3/openapi.json
```

Available Commands
```
url: <your_Swagger_json_url> 
```

# GitHub Actions Path

Saves to path:

```
./postman/swagger.json
./postman/collection.json
```

# Usage Example 

```
./github/workflow/actions.yml
```
```
Name: Convert Swagger URL to Postman

on:
  push:
    branches: [ master ]

jobs:
  Build:
    name: Convert Swagger URL to Postman
    runs-on: ubuntu-latest
    steps:
    
      - uses: actions/checkout@v3
      - uses: antyung88/gh-actions-swagger-to-postman@v2.1
        with:
          url: https://petstore3.swagger.io/api/v3/openapi.json
      - run: |
          cat ./postman/swagger.json
          cat ./postman/collection.json
...
```

# Usage- Docker
```
docker run ghcr.io/antyung88/openapi2postmanv2:latest openapi2postmanv2
```
