
if ! python manage.py makemigrations; then
    echo "Failed to makemigrations"
    exit 1
fi

if ! python manage.py migrate; then
    echo "Failed to migrate"
    exit 1
fi


gunicorn --bind 0.0.0.0:8000 --workers 4 config.wsgi:application