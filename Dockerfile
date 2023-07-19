FROM google/cloud-sdk:439.0.0-slim
LABEL maintainer "Smart Algorithm Co., Ltd. <contact@smartalgorithm.co.jp>"

RUN apt-get update -y && \
    apt-get install -y kubectl && \
    curl -Lo /usr/local/bin/skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && chmod +x /usr/local/bin/skaffold && \
    curl -s https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh | bash && mv kustomize /usr/local/bin/kustomize
