default:
	git pull
	ansible-playbook -i $(role_name)-dev.maidevops.fun, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e role_name=$(role_name) -e env=$(env)

tool:
	ansible-playbook -i $(tool_name)-internal.maidevops.fun, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e role_name=$(tool_name)
