FROM  continuumio/miniconda3
RUN apt-get -y update && apt-get -y upgrade && opt/conda/bin/conda install jupyter -y 
RUN conda install -c anaconda pymongo pandas
RUN useradd -m conda
RUN mkdir /opt/notebooks
RUN chown conda:conda /opt/notebooks
USER conda
