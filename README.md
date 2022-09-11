# multi-environment-terraform

## Pre-Requisites

```bash
aws configure --profile default
aws configure --profile dev
aws configure --profile prod
```

## Development Environment

```bash
terraform init -reconfigure -backend-config="backend-config/dev.tfvars"
terraform plan -var-file="tfvars/dev.tfvars"
terraform apply -var-file="tfvars/dev.tfvars" -auto-approve
```

## Production Environment

```bash
terraform init -reconfigure -backend-config="backend-config/prod.tfvars"
terraform plan -var-file="tfvars/prod.tfvars"
terraform apply -var-file="tfvars/prod.tfvars" -auto-approve
```

## Destroy Development Environment

```bash
terraform init -reconfigure -backend-config="backend-config/dev.tfvars"
terraform destroy -var-file="tfvars/dev.tfvars" -auto-approve
```

## Destroy Production Environment

```bash
terraform init -reconfigure -backend-config="backend-config/prod.tfvars"
terraform destroy -var-file="tfvars/prod.tfvars" -auto-approve
```

>:note: statefiles creating in different directories(dev/prod) based on environment variables provided in backend config

  ![image](https://user-images.githubusercontent.com/58024415/189519371-589a4349-4a9f-4072-8c76-7a1fe12886dc.png)
