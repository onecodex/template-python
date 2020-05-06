.PHONY: format requirements install/pyenv install/pre-commit install
REPO_NAME := $(shell basename `pwd`)

HOOK_TYPE := $(PRE_COMMIT_HOOK_PREFERENCE)
ifndef HOOK_TYPE
HOOK_TYPE := "pre-commit"
endif

format:
	pre-commit run --all-files

test:
	py.test -vv

install/pyenv:
	pyenv install --skip-existing 3.8.2
	pyenv virtualenv -f 3.8.2 ${REPO_NAME}
	pyenv local ${REPO_NAME}
	pip install pip-tools pre-commit

install/pre-commit:
	pre-commit install --install-hooks --hook-type ${HOOK_TYPE}

uninstall/pre-commit:
	pre-commit uninstall -t ${HOOK_TYPE}

install/requirements:
	pip-compile --allow-unsafe --generate-hashes > requirements.txt
	pip-sync

install: install/pyenv install/requirements install/pre-commit
