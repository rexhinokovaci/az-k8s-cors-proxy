# Azure Kubernetes CORS Proxy

## Overview

This project sets up a scalable and highly available CORS proxy service on an Azure Kubernetes Service (AKS) cluster using Terraform for Infrastructure as Code (IaC). The CORS proxy handles HTTP requests, adds appropriate CORS headers, and forwards them to the target server.

## Repository Structure

```bash
Azure-K8s-CORS-Proxy/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── provider.tf
├── kubernetes/
│   └── cors-proxy.yaml
├── loadtest/
│   └── loadtest.js
└── README.md
