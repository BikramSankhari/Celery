FROM python:3.11.4-alpine

WORKDIR /usr/src/app

# prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1
# ensure Python output is sent directly to the terminal without buffering
ENV PYTHONUNBUFFERED=1

# Create a non-root user
RUN adduser -D celery_user

RUN pip install --upgrade pip
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

# COPY Celery_Docker/entrypoint.sh /usr/src/app/entrypoint.sh

# COPY . /usr/src/app/

ENTRYPOINT ["/usr/src/app/Celery_Docker/entrypoint.sh"]