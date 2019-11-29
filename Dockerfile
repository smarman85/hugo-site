FROM smarman/ubuntu18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      wget \
      vim && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.60.0/hugo_0.60.0_Linux-64bit.tar.gz && \
    tar -xvzf hugo_0.60.0_Linux-64bit.tar.gz && \
    mv hugo /usr/bin/ && \
    useradd -ms /bin/bash hugoUser

USER hugoUser
COPY . /srv/
WORKDIR /srv/sean

#CMD ["hugo", "server", "--bind=0.0.0.0", "-D"]
ENTRYPOINT ["hugo", "server", "--bind=0.0.0.0", "-D"]
