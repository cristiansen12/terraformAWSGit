FROM alpine

ENV TERRAFORM_VERSION=0.12.12

#Install Terraform
RUN apk --update add curl jq python bash ca-certificates git openssl unzip wget && \
    cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin

#Install Git
RUN apk --update add git less openssh

#Install aws-cli
RUN apk --update add groff && \
    pip install awscli

#Clear caches
RUN apk del --purge build && \
    apk add --no-cache go && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
