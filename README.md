## Resources
This test case represents the creation of a virtual machine in the Azure cloud:
```
backend = Azure Blob (created via the Azure portal)
azure access = Azure Service Principal (created via the Azure portal)
pub connection key = key vault
modules = VM, Network, RG, Key Vault
```


## Connection
After creating all the resources, need to run the following commands to connect to the virtual machine:
```
az login
terraform output -raw vm_private_key > key.pem
chmod 600 key.pem
terraform output - raw public_ip_address
```

## Security rules
```
A security rule was created for port 9100 to allow third-party monitoring services.
SSH connection port 22
```

## CI/CD
```
A CI/CD process was also implemented to automatically deploy resources across environments when merging PRs.
```