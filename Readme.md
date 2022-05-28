# Docker image with CDKTF CLI and Terraform CLI

The [CDKTF](https://github.com/hashicorp/terraform-cdk) allows you to use familiar programming languages to define and provision infrastructure, as an alternative to the HCL configuration language.

The CDKTF CLI depends on the [Terraform CLI](https://github.com/hashicorp/terraform) as the backend for all the resources operations like deploying or destroying.

It exposes the following binaries:

- cdktf
- terraform

# Terraform versions supported

It supports the two latest minor versions of Terraform, currently:

- Terraform v1.1.x
- Terraform v1.2.x

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

## Contributing

To build the image locally, enter into one of the image directories like `node` or ``binary` and run:

    ```bash
    docker build --build-arg tf_version=1.1.9 --build-arg node_version=16.15.0 --build-arg os_version=alpine3.15 --build-arg pkg_version=5.7.0 --build-arg cdktf_version=0.10.4 .
    ```
