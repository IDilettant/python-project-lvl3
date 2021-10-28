install:
		poetry install

build:
		poetry build

lint:
		poetry run flake8 page_loader

package-install:
		python3 -m pip install --user dist/*.whl

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=page_loader --cov-report xml

pre-commit:
	poetry run pre-commit run --all-files

mypy-check:
	poetry run mypy --namespace-packages tests page_loader

complexity_check:
	poetry run flake8 --max-cognitive-complexity=5 $(file)

.PHONY: test page_loader install lint build
