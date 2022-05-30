FROM squidfunk/mkdocs-material:8.2.16

RUN pip install mike mkdocs-git-revision-date-plugin

#RUN "apt-get update && apt-get install -y libcairo2-dev libfreetype6-dev libffi-dev libjpeg-dev libpng-dev libz-dev"

