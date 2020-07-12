# Terraform & Terragrunt Image

Docker image contains terraform and terragrunt executable

## Features

- `terraform v0.12.28`
- `terragrunt v0.23.31`

## How to build

```
$ docker build --build-arg VERSION=$VERSION --build-arg VCS_REF=$VCS_REF --build-arg BUILD_DATE=$BUILD_DATE  -t registry.gitlab.com/flavorapp/backend/docker-images/terraform:0.1 .

# example

$ BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
$ docker build --build-arg VERSION=1.0 --build-arg VCS_REF=06566c321bb4c9e1b9547ca6f534a41618eb --build-arg BUILD_DATE=2020-04-27T09:24:41Z  -t registry.gitlab.com/flavorapp/backend/docker-images/terraform:0.1 .
```
