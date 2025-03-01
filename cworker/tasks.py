from celery import shared_task

@shared_task
def subtract(x, y):
    return x - y