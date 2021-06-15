FROM tiangolo/uvicorn-gunicorn:python3.8

LABEL maintainer="Sebastian Ramirez <tiangolo@gmail.com>"

RUN pip install --no-cache-dir requirements.txt

COPY ./app /app

CMD [ "python", "app.py", "log_conf", "http.py"]