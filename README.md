# Garden Bonsai bug reproducing project

### Setup

1. clone repo
1. setup ecr registry
1. setup ecr repository with name `garden/my-container`
1. create env.yaml varfile in root directory with `registry` key set to your registry
1. run `minikube start`.
    Just in case, enabled addons:
    storage-provisioner, default-storageclass, metrics-server, dashboard, ingress
1. create k8s secret `docker-registry-creds` with ecr credentials
1. run `garden deploy helloworld`:

In Garden v0.12, removing environment did not trigger building any Docker images.
But in Garden v0.13, ALL Docker images are built before namespace is cleaned up.
