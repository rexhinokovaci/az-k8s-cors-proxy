# Azure Kubernetes CORS Proxy

## Overview

This project sets up a scalable and highly available CORS proxy service on an Azure Kubernetes Service (AKS) cluster using Terraform for Infrastructure as Code (IaC). The CORS proxy handles HTTP requests, adds appropriate CORS headers, and forwards them to the target server.

## Repository Structure

```
az-k8s-cors-proxy/
├── k8s
│   ├── cors-proxy.yml
│   ├── hpa.yml
│   └── metrics-server-deployment.yml
├── loadtest
│   └── loadtest.js
├── README.md
└── terraform
    ├── main.tf
    ├── outputs.tf
    ├── provider.tf
    └── variables.tf

```     
# Steps and Requirements
1. Cloud Provider Setup

    Provider: Azure

    Account: Created a dev account on Azure for the challenge.

2. Kubernetes Cluster

    Cluster: Set up a Kubernetes cluster using Azure Kubernetes Service (AKS).
    Configuration: The cluster is configured for high availability and can scale based on load.

3. Infrastructure as Code (IaC)

    Tool: Terraform
    IaC Scripts:
        terraform/main.tf: Main configuration file for setting up the infrastructure.
        terraform/variables.tf: Variables used in the configuration.
        terraform/outputs.tf: Outputs of the Terraform deployment.
        terraform/provider.tf: Configuration for the Azure provider.

Instructions for Using IaC Scripts

# Initialize Terraform:

```
terraform init
```   
Plan the Deployment:

```   
terraform plan
```   
Apply the Deployment:

```   
terraform apply
```   
4. Application

    Service: Deployed a CORS proxy using the redocly/cors-anywhere Docker image.
    Deployment Configuration:
        File: k8s/cors-proxy.yml
        The service handles HTTP requests, adds CORS headers, and forwards them.

5. Scalability

    Configuration: Configured Kubernetes Horizontal Pod Autoscaler (HPA) and Metrics Server to scale the CORS proxy service based on CPU/memory usage or request count.
    HPA Configuration File: k8s/hpa.yml
    Metrics Server Deployment File: k8s/metrics-server-deployment.yml
    Request Handling: Ensured that the service can handle up to 1000 requests per second.

6. Load Testing

    Tool Used: k6
    Load Test Results:
        Total Requests: 63,715
        Requests per Second: 592.38
        Average Response Time: 218.07 ms
        Maximum Response Time: 584.24 ms
        HTTP Requests Failed: 0

# Load Testing Methodology

Run Load Test Script:

```   
k6 run loadtest/loadtest.js

```   
# Script Overview:
The script simulates HTTP requests to test the CORS proxy service's scalability.

# Limitations:
The service handled up to 592 requests per second, which is slightly below the target of 1000 requests per second. Additional tuning or scaling might be needed to meet this target consistently.



All source code and configuration files used in this challenge are included in this repository written and destroyed/fixed by @rexhinokovaci.
![alt text](image.png)
![alt text](image-1.png)