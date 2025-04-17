FROM fluxcd/flux-cli:v2.5.1 AS flux

FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh \
    curl \
    sed \
    fzf \
    kubernetes \
    helm \
    "https://github.com/derailed/k9s/releases/latest/download/k9s_linux_amd64.rpm" \
    && dnf clean all \
  	&& rm -rf /var/cache/yum

RUN ( \
      set -x; cd "$(mktemp -d)" && \
      OS="$(uname | tr '[:upper:]' '[:lower:]')" && \
      ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" && \
      KREW="krew-${OS}_${ARCH}" && \
      curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" && \
      tar zxvf "${KREW}.tar.gz" && \
      ./"${KREW}" install krew \
    ) \
    && export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH" \
    && kubectl krew install ctx ns stern

ENV PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

RUN curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64 \
&& chmod +x ./kind \
&& mv ./kind /usr/local/bin/kind

RUN curl -Lo ./kubebuilder https://github.com/kubernetes-sigs/kubebuilder/releases/latest/download/kubebuilder_linux_amd64 \
&& chmod +x ./kubebuilder \
&& mv ./kubebuilder /usr/local/bin/kubebuilder

COPY --from=flux /usr/local/bin/flux /usr/local/bin/flux
