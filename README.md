# Django Experiments

Just playing around with linting, autoformatting, logging, intellisense, debugging, docker in VS Code to find the optimal environment for development. Did this because Django was super hard the first time I had to use it.

## Features

- Python linting with [pylint](https://github.com/PyCQA/pylint) and [flake8](https://flake8.pycqa.org/en/latest/) from virtualenv and VS Code settings.json config
- Python intellisense from virtualenv setup and settings.json config
- Python autoformatting with [black](https://github.com/psf/black)
- Django debugging with [ptsvd](https://github.com/microsoft/ptvsd) and VS Code launch.json config
- Dockerfile and docker-compose runs gunicorn to launch Django dev server (with hot reload that ALSO fixes itself after errors, unlike python manage.py runserver)
