# Makefile for Terraform workflows

# Variables
TERRAFORM_DIR ?= .

# Format Terraform code
.PHONY: package_lambdas
package_lambdas:
	./package_lambdas.sh


.PHONY: fmt
fmt:
	cd $(TERRAFORM_DIR) && terraform fmt -recursive

# Initialize Terraform
.PHONY: init
init:
	cd $(TERRAFORM_DIR) && terraform init

# Validate Terraform code
.PHONY: validate
validate: init fmt
	cd $(TERRAFORM_DIR) && terraform validate

# Plan Terraform changes
.PHONY: plan
plan: package_lambdas validate
	cd $(TERRAFORM_DIR) && terraform plan

# Apply Terraform changes
.PHONY: apply
apply: cd $(TERRAFORM_DIR) && terraform apply -auto-approve

# Destroy Terraform-managed infrastructure
.PHONY: destroy
destroy: validate
	cd $(TERRAFORM_DIR) && terraform destroy -auto-approve
