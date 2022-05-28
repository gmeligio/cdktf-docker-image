# docker build --build-arg tf_version=1.1.9 --build-arg node_version=16.15.0 --build-arg os_version=alpine3.15 --build-arg pkg_version=5.7.0 --build-arg cdktf_version=0.10.4 .

# Stability: unstable

# WIP

ARG tf_version
ARG node_version
ARG os_version

FROM public.ecr.aws/hashicorp/terraform:${tf_version} as terraform

ARG node_version
ARG os_version

FROM hashicorp/jsii-terraform:latest

ARG pkg_version
ARG cdktf_version

RUN yum update -y

RUN git clone --depth 1 --branch "v${cdktf_version}" https://github.com/hashicorp/terraform-cdk.git

WORKDIR /terraform-cdk
RUN yarn install
RUN yarn build

RUN npm install -g pkg@${pkg_version}

WORKDIR /terraform-cdk/packages/cdktf-cli

RUN pkg .
