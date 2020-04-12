# Generic public FARGATE stack

This Terraform stack will help you to launch a public task with fargate.
All variables are in sdx.tfvars , fell free to modify these variables to match your needs. Make sure you change the role into the main.tf file by the role you are using.


## Schema

![image info](images/overview-fargate.png "Schema")



## Usage

To try this stack just initialize your project

```
terraform init
```
And then you can run terraform plan this way

```
terraform plan   -var-file="sdx.tfvars"
```
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| AppRole | The application role | `string` | n/a | yes |
| ManagedBy | The operational team oin this project | `string` | n/a | yes |
| alb\_name | The ALB name | `string` | `"alb-name"` | no |
| application | The application name | `string` | n/a | yes |
| auto\_egress\_rules | List of egress rules to add automatically | `list(string)` | <pre>[<br>  "all-all"<br>]</pre> | no |
| auto\_ingress\_rules | List of ingress rules to add automatically | `list(string)` | <pre>[<br>  "http-80-tcp"<br>]</pre> | no |
| azs | The availability\_zones for VPC | `list` | <pre>[<br>  ""<br>]</pre> | no |
| container\_container\_cpu | The max CPU  allowed for this task | `number` | n/a | yes |
| container\_image | The container name | `string` | `""` | no |
| container\_memory\_allowed | The memory allowed for this task | `number` | n/a | yes |
| container\_memory\_reservation | The memory reservation | `number` | n/a | yes |
| container\_port | Port | `number` | n/a | yes |
| database\_subnets | The private sub net | `list` | <pre>[<br>  ""<br>]</pre> | no |
| ecr\_name | The ECR Repository name | `string` | `"reposdx"` | no |
| env | The targeted environment | `string` | n/a | yes |
| log\_driver | The log driver for task definition | `string` | `"awslog"` | no |
| name\_preffix | The prefix used for fargate | `string` | `"btv01"` | no |
| owner | The project Owner | `string` | n/a | yes |
| private\_subnets | The private sub net | `list` | <pre>[<br>  ""<br>]</pre> | no |
| profile | The AWS API KEY to use | `string` | `"gbi-devops-sbx-ops-admin"` | no |
| project\_name | The projectname | `string` | `""` | no |
| project\_trigramme | The project trigram | `string` | `""` | no |
| public\_subnets | The public CIDR list | `list` | <pre>[<br>  ""<br>]</pre> | no |
| redshift\_subnets | The redshift subnet | `list` | <pre>[<br>  ""<br>]</pre> | no |
| region | The targeted region | `string` | `"eu-west-3"` | no |
| region\_trigram | the region trigram example ew3 for europe west Paris | `string` | `""` | no |
| vcp\_cidr | The VPC cidr block | `string` | `""` | no |
| vcp\_pub\_sub\_tags | The VPC tags | `string` | `""` | no |
| vpc\_cidr | The CIDR | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| block\_cidr\_vpc | n/a |
| database\_subnets | List of IDs of database subnets |
| elasticache\_subnets | List of IDs of elasticache subnets |
| intra\_subnets | List of IDs of intra subnets |
| lb\_arn | n/a |
| lb\_dns\_name | n/a |
| lb\_sg\_arn | n/a |
| nat\_public\_ips | List of public Elastic IPs created for AWS NAT Gateway |
| private\_subnets | List of IDs of private subnets |
| public\_subnets | List of IDs of public subnets |
| redshift\_subnets | List of IDs of redshift subnets |
| vpc\_endpoint\_ssm\_dns\_entry | The DNS entries for the VPC Endpoint for SSM. |
| vpc\_endpoint\_ssm\_id | The ID of VPC endpoint for SSM |
| vpc\_endpoint\_ssm\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for SSM. |
| vpc\_id | The ID of the VPC |
