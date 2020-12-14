FROM python:3.7-buster
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install 
RUN pip install pysam

COPY . .
RUN python setup.py install
ENTRYPOINT [ "galaxy-workflow-tool-tests" ]
