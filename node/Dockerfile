# docker build --build-arg tf_version=1.1.9 --build-arg node_version=16.15.0 --build-arg os_version=alpine3.15 --build-arg pkg_version=5.7.0 --build-arg cdktf_version=0.10.4 .

ARG tf_version
ARG node_version
ARG os_version

FROM public.ecr.aws/hashicorp/terraform:${tf_version} as terraform

ARG node_version
ARG os_version

FROM public.ecr.aws/docker/library/node:${node_version}-${os_version}

ARG cdktf_version
ARG tf_version
ARG build_number
ARG build_system

LABEL build_system=${build_number}
LABEL build_number=${build_system}

COPY --from=terraform /bin/terraform /usr/bin/terraform

RUN npm install -g cdktf-cli@${cdktf_version}
