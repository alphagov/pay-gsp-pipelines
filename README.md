# pay-gsp-pipelines

Infrastructure code for GOV.UK Pay running on a [GSP](https://github.com/alphagov/gsp) cluster.

## Deployment pipelines

Concourse pipelines are defined under `ci/` for each environment.
The Concourse tasks used in the pipelines have been pulled out into `tasks/`.

## Helm charts

The Helm charts which defined the deployments are under `charts/`.
`charts/stubs` defines the deployment of test stubs for running the end-to-end tests.
`charts/pay` defines the deployment of Pay's microservices.
