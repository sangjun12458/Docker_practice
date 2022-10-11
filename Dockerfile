FROM python
MAINTAINER sangj "sjpark514@khu.ac.kr"
COPY . /app
RUN pip install django && apt-get update
WORKDIR /app
RUN python manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
