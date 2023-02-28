pip-install-dev:
    pip install --upgrade pip pip-tools

pip-install:
    pip install --upgrade pip pip-tools

poetry-install:
    pip install poetry
	poetry install 

server:
    python manage.py migrate && python manage.py runserver

lint:
    flake8 palyanytsya
    mypy palyanytsya

black:
    python -m black palyanytsya

cleanimports:
    isort .
    autoflake -r -i --remove-all-unused-imports --ignore-init-module-imports project_name

clean-lint: cleanimports black lint

checkmigrations:
    python manage.py makemigrations --check --no-input --dry-run

install-hooks:
    echo "make lint && make checkmigrations" > .git/hooks/pre-commit && chmod 777 .git/hooks/pre-commit

messages:
    python manage.py makemessages --all --ignore=venv --extension html,py
    python manage.py translate_messages -s en -l uk -l es -u
    python manage.py compilemessages --ignore venv