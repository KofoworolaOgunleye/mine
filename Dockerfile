FROM tiangolo/uvicorn-gunicorn:python3.8

LABEL maintainer="Sebastian Ramirez <tiangolo@gmail.com>"

WORKDIR /app

COPY requirements.txt ./

RUN pip3 install --no-cache-dir requirements.txt

COPY . .

CMD [ "python", "app.py", "log_conf.py", "http.py"]
