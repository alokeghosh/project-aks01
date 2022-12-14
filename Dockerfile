FROM ubuntu
MAINTAINER Aloke ghosh
RUN apt-get update
RUN apt-get install -y python
ADD index.py /src/index.py
CMD ["/src/index.py"]
ENTRYPOINT ["python"]
