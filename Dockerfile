FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN set -e -x ;\
    apt -y update ;\
    apt -y install \
        make \
        python3 \
        latexmk python3-sphinx texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended; \
    apt -y autoremove ;\
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
