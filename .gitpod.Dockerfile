FROM ubuntu:20.04
MAINTAINER ngshya

RUN echo "root:root" | chpasswd
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt dist-upgrade -y
RUN apt -y install htop \
 micro \
 git \
 python3-pip \
 wget \
 libicu-dev
RUN yes | pip3 install --upgrade pip
RUN yes | pip3 install pytest pytest-cov pytest-xdist pytest-pep8 sphinx pylint
RUN yes | pip3 install pandas dask numpy scipy numba scikit-learn statsmodels 
RUN yes | pip3 install tensorflow tensorflow-hub torch==1.7.0+cpu torchvision==0.8.1+cpu torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html 
RUN yes | pip3 install pystan
RUN yes | pip3 install fbprophet neuralprophet neuralprophet[live]
RUN yes | pip3 install nltk textblob gensim spacy polyglot sentence-transformers transformers
RUN yes | pip3 install python-twitter bs4 selenium 
RUN yes | pip3 install matplotlib seaborn plotly streamlit 
