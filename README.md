This project aim at building a simple docker container for hosting a simple website using nginx webserver.The container then needs to be deployed on a kubernetes cluster and made accessible via local web browser.

Technologies
* Docker
* Kubernetes(minikube)
* CI/CD - Github Actions
* Dockerhub
* Helm

Getting Started
* Follow the following instructions to get a copy of the project running on your local machine.

Installation/Setup
  1. Clone the repo with - git clone <repo url>
  2. Change to the project directly - cd ABS-GUIDE
  3. Build the docker image by running this comannd 
        1. docker build -t abs-guide .
        2. docker run -it -p 8081:80 abs-guide
  4. NOTE - This creates a new container from the image and binds port 80 of the container to port 8081 of the host machine
  5. Our web server will be up at http://localhost:8081

## Step 2 - CI/CD 
* GitHub Actions - is a CI/CD platform that allows you to automate build,test,deploy pipeline from GitHub. This goes beyond just Dev0ps 
  and lets you run workflows when other events happen in your repository

  Setup
  1. checkout
  2. setup docker buildx
  3. Dockerhub login
  4. Docker Buildx to create the builder instance using a BuildKit container under the hood
  5. Build and push
  6. Run the pipeline
  7. view pushed image in your dockerhub account

## Step 3 - Kubernetes
* Kubernetes - the de facto technology for container management and orchestration, however once it's up and running, it's highly configurable
  and it serves as the engine for an organisation's modern IT. k8s comes with a capability of automating deployment,scaling & operation of App containers across clusters.

  Basic k8s architecture
  1. Services
  2. Deployments

  Setup
  1. Change to the project directly - cd k8s/bash
  2. Automate using bash to create deployment and service
        1. chmod +x script.sh
        2. ./script.sh
        3. minikube service abs-guide-svc --url
        4. Our web server will be up at http://xx.x.xxx.xxx:xxxxx

## step 4 - Helm
## install Helm 
    1.you can follow same procedure in the official Helm document (https://helm.sh/docs/intro/install/#from-script)
## Create our first Chart
    1. cd helm/
    2. mkdir abs-guide && cd abs-guide
    3. helm create abs-guide
## Cleanup the template
    1. delete everything under /templates, keeping only _helpers.tpl
    2. delete tests folder under templates
## kubernetes files to new chart
    1. Copy the following files into our abs-guide/templates/ folder
        1. <GitRepo>/k8s/deployment.yaml
        2. <GitRepo>/k8s/service.yaml
## Install app using Chart
    1. helm install abs-guide abs-guide
    ## list our releases
    2. helm list
    ## checkout deployed components
    1. kubectl get all -n abs-guide
## Value injections for the Chart
    1. # values.yaml
        1. change values.yaml
        2. change deployment.yaml
    2. # upgrade our release
        1. helm upgrade abs-guide abs-guide --values ./abs-guide/values.yaml
    3. # see revision increased
        1. helm list


