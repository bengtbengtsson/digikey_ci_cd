# fetch ubuntu image
FROM ubuntu:20.04

# install python on image
RUN \
	apt-get update && \
	apt-get install -y python3

# create a directory for our tests
RUN mkdir /tests

# copy test.py /tests/test.py
COPY test.py /tests/test.py

# invoke command when container starts
ENTRYPOINT ["python3", "tests/test.py"]


