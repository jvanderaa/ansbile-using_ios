.DEFAULT_GOAL := test
.PHONY: test
test: lint

.PHONY: setup
setup:
	@echo "Starting  setup"
	pip install -r requirements.txt

.PHONY: lint
lint:
	@echo "Starting  lint"
	find . -name "*.yml" | xargs yamllint -s
	find . -name "*.py" | xargs pylint
	find . -name "*.py" | xargs bandit
	@echo "Completed lint"