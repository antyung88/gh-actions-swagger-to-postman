# gh-actions-swagger-to-postman
Convert Swagger JSON URL To Postman Collection via Github Actions + Artifacts

# Usage

```
      - uses: actions/checkout@v3
      - uses: antyung88/gh-actions-swagger-to-postman@v1.7
        with:
          url: https://petstore3.swagger.io/api/v3/openapi.json
```

Available Commands
```
url: <your_Swagger_json_url> 
```

# Usage Example 

```
./github/workflow/actions.yml
```
```
Name: Setup & Run LXD/LXC in GitHub Actions

on:
  push:
    branches: [ master ]

jobs:
  Build:
    name: Convert Swagger URL to Postman
    runs-on: ubuntu-latest
    steps:
    
      - uses: actions/checkout@v3
      - uses: antyung88/gh-actions-swagger-to-postman@v1.7
        with:
          url: https://petstore3.swagger.io/api/v3/openapi.json
...
```
