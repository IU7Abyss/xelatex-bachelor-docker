FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

VOLUME ["/texprojects"]

RUN mkdir /root/.fonts/
COPY ./fonts/ /root/.fonts/

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y --no-install-recommends build-essential vim apt-file
RUN apt-file update

RUN apt-get install -y --no-install-recommends \
			texlive-latex-base \
                        texlive-latex-recommended \ 
                        texlive-latex-extra \
                        texlive-fonts-recommended \
                        texlive-generic-recommended \
                        texlive-generic-extra \
                        texlive-xetex \
                        latex-xcolor \
			texlive-math-extra \
			texlive-bibtex-extra \
                        texlive-font-utils \
			fontconfig \
			pgf \
			ghostscript \
			lmodern \
                        dia \
                        graphviz \ 
                        inkscape 

RUN fc-cache -f -v

WORKDIR "/texprojects"
