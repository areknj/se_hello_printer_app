FROM python:2.7
WORKDIR /tmp
ADD requirements.txt /tmp/requirments.txt
RUN pip install -r /tmp/requirments.txt

RUN mkdir -p /usr/src/hello_world_printer/
RUN ls /usr/src/hello_world_printer

CMD PYTHONPATH=$PYTHONPATH:/usr/src/hello_world_printer \
      FLASK_APP=hello_world flask run --host=0.0.0.0
