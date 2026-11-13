.PHONY: deps install check os-deps runtimes daemons containers cis-audit

deps:
	ansible-galaxy collection install -r requirements.yml -p ./collections	

install: deps
	ansible-playbook site.yml

check:
	ansible-playbook site.yml --check --diff

os-deps:
	ansible-playbook site.yml --tags os_deps

runtimes:
	ansible-playbook site.yml --tags runtimes

daemons:
	ansible-playbook site.yml --tags daemons

containers:
	ansible-playbook site.yml --tags containers

cis-audit:
	ansible-playbook site.yml --tags cis