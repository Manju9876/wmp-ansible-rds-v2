default:
	git pull
	ansible-playbook -i $(component_name)-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$(component_name) wmp.yaml

all:
	git pull
	ansible-playbook -i frontend-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=frontend wmp.yaml
	ansible-playbook -i postgresql-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=postgresql wmp.yaml
	ansible-playbook -i auth-service-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=auth-service wmp.yaml
	ansible-playbook -i portfolio-service-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=portfolio-service wmp.yaml
	ansible-playbook -i analytics-service-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=analytics-service wmp.yaml