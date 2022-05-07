# Docker image with CDKTF CLI and Terraform CLI

The [CDKTF](https://github.com/hashicorp/terraform-cdk) allows you to use familiar programming languages to define and provision infrastructure, as an alternative to the HCL configuration language.

The CDKTF CLI depends on the [Terraform CLI](https://github.com/hashicorp/terraform) as the backend for all the resources operations like deploying or destroying.

It exposes the following binaries:

- cdktf
- terraform

## Usage

- From Docker Hub

```bash
docker pull gmeligio/cdktf:0.10.3-tf1.1.9-node16.15.0-alpine3.15
```

- From GitHub Container Registry

```bash
docker pull ghcr.io/gmeligio/cdktf:0.10.3-tf1.0.11-node16.15.0-alpine3.15
```

- From AWS ECR

```bash
docker pull public.ecr.aws/gmeligio/cdktf:0.10.3-tf1.0.11-node16.15.0-alpine3.15
```
