.PHONY: help syntax check lint ssh deploy

PLAYBOOK=playbooks/hardening.yml
INVENTORY=inventory/hosts.yml

help:
	@echo "Available targets:"
	@echo "  make syntax   - Ansible syntax check"
	@echo "  make check    - Dry-run (check mode)"
	@echo "  make ssh      - Run SSH role only"
	@echo "  make deploy   - Apply full hardening"

syntax:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --syntax-check

check:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --check

ssh:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags ssh

deploy:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK)

