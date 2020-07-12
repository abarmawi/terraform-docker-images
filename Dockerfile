FROM alpine:3.9

# image version
ARG VERSION
# git commit ref
ARG VCS_REF
# image build timestamp
ARG BUILD_DATE

LABEL maintainer="Abdallah Albarmawi <abarmawi@live.com>"
LABEL org.label-schema.name="terraform & terragrunt image"
LABEL org.label-schema.description="This image contains terraform & terragrunt executables"
LABEL org.label-schema.usage="https://github.com/abarmawi/terraform-docker-images/blob/master/README.md"
LABEL org.label-schema.url="https://github.com/abarmawi/terraform-docker-images/"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.schema-version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE

# terraform & terragrunt versions
ENV TERRAFORM_VERSION=0.12.28
ENV TERRAGRUNT_VERSION=0.23.31

RUN apk add unzip openssh-client

# install terragrunt
ADD https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN chmod +x /usr/local/bin/terragrunt

# install terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_386.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_386.zip -d /usr/local/bin \
    && rm terraform_${TERRAFORM_VERSION}_linux_386.zip

WORKDIR /modules
ENTRYPOINT []
CMD []