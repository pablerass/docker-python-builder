FROM python:3.5

# Avoid runnig from shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install virtualenv
RUN pip install virtualenv virtualenvwrapper

# Prepare virtualenv
ENV WORKON_HOME /virtualenvs
RUN mkdir -p $WORKON_HOME && chmod a+rw $WORKON_HOME
RUN source /usr/local/bin/virtualenvwrapper.sh