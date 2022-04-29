FROM public.ecr.aws/hashicorp/terraform:1.1.9 as terraform

FROM public.ecr.aws/docker/library/node:16.15.0-alpine3.15

COPY --from=terraform /bin/terraform /usr/bin/terraform

RUN npm install -g cdktf-cli@0.10.3
