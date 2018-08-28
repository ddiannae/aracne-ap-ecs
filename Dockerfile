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
COPY lung-normal.tsv /aracneap/
COPY genelist.txt /aracneap/
CMD ["/aracneap/start.sh"]
