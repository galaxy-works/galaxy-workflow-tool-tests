FROM python:3.7-buster
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install 
RUN pip install pysam

COPY . .
# Install custom galaxy-tool-util if needed.
# RUN pip install galaxy_tool_util-21.1.0.dev4-py2.py3-none-any.whl
RUN python setup.py install
ENTRYPOINT [ "galaxy-workflow-tool-tests" ]
