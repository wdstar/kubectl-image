FROM alpine

# https://github.com/kubernetes/kubernetes/releases
ARG KUBECTL_VER
ADD https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VER}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

RUN apk update
RUN apk add bash
