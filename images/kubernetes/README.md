# Kubernetes

A Kubernetes development environment for [Toolbox](containertoolbx.org/)

## Usage

after you created the toolbox with this image, you can enter the environment by running

```shell
toolbox enter <container-name>
```

## Image information

This image contains the following tools:

- [flux](https://fluxcd.io/)
- [helm](https://helm.sh/)
- [k9s](https://k9scli.io/)
- [kind](https://kind.sigs.k8s.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [kubectl krew](https://krew.sigs.k8s.io/)
- [kubectl ctx](https://github.com/ahmetb/kubectx)
- [kubectl ns](https://github.com/ahmetb/kubectx)
- [kubectl stern](https://github.com/stern/stern)

> ![NOTE]
> flux and kind have pinned versions, that need to be kept up-to-date manually.
> (See Dockerfile for details)
