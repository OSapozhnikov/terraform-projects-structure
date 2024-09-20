# terraform-projects-structure
Materials for terraform best project structure presentation

Full webinar available on Youtube: [Svitla Smart Talk: Oleksandr Sapozhnikov - How to choose the best Terraform project structure](https://www.youtube.com/watch?v=_3VA_RyrRQE)

Simple code example:
```bash
ENV=dev
REGION=eu-central-1
terraform init -backend-config="./enviroments/${ENV}/${REGION}/backend.tfvars"
terraform plan -var-file="./enviroments/${ENV}/${REGION}/terraform.tfvars" -out "terraform.tfplan" 
terraform show --json "terraform.tfplan" | convert_report > tfplan.json 
```


## Init example, will be updated!

<img title="multi_region_example" alt="multi_region_example" src="./img/multi_region_example.png">
