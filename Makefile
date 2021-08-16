pull:
	docker-compose pull

init:
	docker-compose run --rm terraform init

fmt:
	docker-compose run --rm terraform fmt -recursive

plan:
	docker-compose run --rm terraform plan

apply:
	docker-compose run --rm terraform apply
