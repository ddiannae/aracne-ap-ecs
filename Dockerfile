FROM ohsucompbio/aracne 
RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        groff \
        less \
    && pip install --upgrade awscli \
    && apt-get clean

RUN R -f 00_InstallPackages.R

WORKDIR /aracneap
COPY start.sh /aracneap/
CMD ["/aracneap/start.sh"]
