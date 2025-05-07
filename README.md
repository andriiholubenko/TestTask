# TestTask — DevOps Learning Lab

A hands-on repository to practice and document DevOps workflows using Azure, Terraform, Ansible, and GitHub Actions etc.. This project is actively evolving as I explore new tools and approaches.

## 📦 Resources
This test case represents the creation resource in the Azure cloud:
```
- AKS:cluster (terraform)
- backend: Azure Blob (created via the Azure portal)
- azure access: Azure Service Principal (created via the Azure portal)
- pub connection key: = key vault
- modules: VM, Network, RG, Key Vault
- Configuration Management: Ansible playbooks to install and configure Prometheus, Grafana, and Node Exporter.
- Monitoring Setup: Automated setup for collecting and visualizing metrics from Azure VMs.
```


## 🚀 Connection
After creating all the resources, need to run the following commands to connect to the virtual machine:
```
az login
terraform output -raw vm_private_key > key.pem
chmod 600 key.pem
terraform output - raw public_ip_address
```

## Security rules
```
A security rule was created for ports 9100, 9090, 3000 to allow third-party monitoring services.
SSH connection port 22
```

## CI/CD
```
A CI/CD process was also implemented to automatically deploy resources across environments when merging PRs.
```
