# Terraform, Azure AKS, and GitHub Actions Capstone Project

## CST8918 Infrastructure Project (FP5)

## Overview

This capstone project applies the principles of Infrastructure as Code (IaC) using Terraform, deploys Azure Kubernetes Service (AKS) clusters, and automates workflows using GitHub Actions. The project aims to deploy the Remix Weather Application to Azure infrastructure managed with Terraform, ensuring collaboration, testing, and deployment automation.

## Team Members
| | Name | Username | Link to GitHub Profile |
| ----------- | ----------- | ----------- | ----------- |
| - | Arpit Patel | `pate1096` | [PatelArpittAC](https://github.com/PatelArpittAC/) |
| - | Devansh Sheth | `shet0028` | [DevanshSheth9401](https://github.com/DevanshSheth9401) |
| - | Kalpitkumar Parekh | `pare0254` | [KalpitAlgonquin09](https://github.com/KalpitAlgonquin09) |
| - | Meet Dewani | `dewa0117` | [MeetAlgonquin](https://github.com/MeetAlgonquin) |

## Project Description

The project involves deploying Azure resources using Terraform, including AKS clusters, Azure Container Registry (ACR), managed Redis DB (Azure Cache for Redis), and Kubernetes deployments for the Remix Weather Application. GitHub Actions workflows are implemented to automate Terraform tasks, run static tests, and deploy the application.

## Instructions

1. **Clone the Repository**:

`git clone https://github.com/PatelArpittAC/cst8918-final-project-group-5.git`
`cd cst8918-final-project-group-5`


2. **Install Terraform**: Ensure Terraform is installed on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html) and follow the installation instructions.

3. **Set Up Azure Credentials**: 
- Obtain Azure credentials (service principal) and set them as environment variables (`ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_SUBSCRIPTION_ID`, `ARM_TENANT_ID`) or use Azure CLI to authenticate.

4. **Run Terraform Commands**:

`terraform init`
`terraform plan`
`terraform apply`

5. **Deploy Remix Weather Application**: 
- Ensure Docker is installed on your local machine.
- Build the Docker image for the Remix Weather Application.
- Push the Docker image to the Azure Container Registry (ACR).
- Deploy the application to AKS clusters using `kubectl`.

`az acr login --name weatherappacr5`

`docker tag cst8918w24a03weatherpulumi weatherappacr5.azurecr.io/cst8918w24a03weatherpulumi:latest`

`nslookup weatherappacr5.azurecr.io`

`docker push weatherappacr5.azurecr.io/cst8918w24a03weatherpulumi:latest`

`kubectl get service wather-app-service`

6. **Access the Application**:
- Obtain the external IP address or DNS name of the deployed service in AKS.
- Access the Remix Weather Application using a web browser or API client.

7. **Monitor GitHub Actions Workflows**: 
- Monitor GitHub Actions workflows for automated testing and deployment tasks.

8. **Collaboration and Contribution**:
- Fork the repository and create feature branches for contributions.
- Follow the branch protection rules and guidelines for pull requests.

## Clean Up

Once testing and evaluation are complete, delete the Azure resources to avoid incurring charges.