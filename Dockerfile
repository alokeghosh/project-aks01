FROM python:3.8
RUN useradd app
USER app
ENV MICRO_SERVICE=/home/app/webapp
# set work directory
RUN mkdir -p $MICRO_SERVICE
# where your code lives
WORKDIR $MICRO_SERVICE
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# install dependencies
RUN pip install --upgrade pip
# copy project
COPY  app.py $MICRO_SERVICE
COPY requirements.txt $MICRO_SERVICE
RUN pip install -r requirements.txt
EXPOSE 8501
CMD streamlit run app.py
