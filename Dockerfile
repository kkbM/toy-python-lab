FROM jupyter/scipy-notebook:latest

WORKDIR /home/jovyan

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN jupyter serverextension enable --py jupyterlab