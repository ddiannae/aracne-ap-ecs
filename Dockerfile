FROM ohsucompbio/aracne 
RUN apt-get update && \
    apt-get install -y \
        python \
        python-pip \
        python-setuptools \
    && pip install --upgrade awscli \
    && apt-get clean
WORKDIR /aracneap
COPY start.sh /aracneap/
CMD ["/aracneap/start.sh"]
