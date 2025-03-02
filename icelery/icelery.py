from celery import Celery

app = Celery('icelery')
app.config_from_object('config', namespace='CELERY')
app.autodiscover_tasks()

@app.task
def multiply(x, y):
    return x * y