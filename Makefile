
SECRET_FILE_ARG=-var-file=secrets.tfvars

help:
	@echo "Help!"

t-dns-init:
	terraform -chdir=dns init

t-dns:
	terraform -chdir=dns apply $(SECRET_FILE_ARG)

t-internal-init:
	terraform -chdir=internal init

t-internal:
	terraform -chdir=internal apply

t-vms-init:
	terraform -chdir=vms init

t-vms:
	terraform -chdir=vms apply $(SECRET_FILE_ARG)