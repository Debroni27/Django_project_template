# Django project base template

Базовый шаблон для реализации старта проекта на Django


> **Примечание**
>
> Эта реализация которая подходит в первую очередь мне для запуска проекта с нуля и доводя его под определенные бизнес задачи.
> Такая струкрура проекта далеко не универсальная для каждого.
> Для более подробного ознакомления с [Django](https://docs.djangoproject.com)
>

## Описание шаблона
Это базовый шаблон, который помогает быстро развернуть проект и запустить минимальные сервисы в [Docker](https://docs.docker.com):
1) Для начала создаем нужную директорию для работы с проектом `mkdir {folder_name}` и переходим туда `cd {folder_name}` 
2) Проверяем наличие git на компьютере `git -v`, в случае его отсутствия установить на компьютер [Git](https://git-scm.com) 
3) Делаем `git clone https://github.com/Debroni27/Django_project_template.git`, после `git remote -v`, что remote exist
4) Создаем виртуальное окружение и активируем его `python3.* -m venv venv` -> `source/venv/bin/activate`
5) Устанавливаем все зависимости `pip install poetry` -> `poetry install`
6) В корне проекта создаем env файл `touch .env`. 
-> [DB_NAME="db" DB_USER="dev_user" DB_PASSWORD="dev_pass" DB_HOST="db" DB_PORT=5432]
-> Для Django проекта создавайте свои значения
7) Проверяем наличие docker и docker-compose `docker --version`, `docker-compose --version`. При отсутствии установить 
8) Поочереди начинаем билдить сервисы `docker-compose up --build db`, затем pgweb и сам server

В итоге у нас есть готовая база в контейнере, есть запущенный django проект

> **Примечание**
1. Папка api задумана для всего последующего использования [DRF](https://www.django-rest-framework.org)
2. Папка fixtures для работы с тестовыми значениями либо чтобы наполнить базу и поиграться
3. Папка .github для ci и пуша НЕ в ветку мастера, а скорее для работы с flow
4. Папка remote_services для интергации с внешними API системами
5. Папка core для создания базовых моделей и кастомных реализаций
6. [Makefile](https://makefiletutorial.com/)
