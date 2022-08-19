FROM ubuntu

RUN apt-get update
RUN apt-get install pandoc -y
RUN apt-get install texlive-latex-base -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install texlive-xetex -yq
RUN apt-get install texlive-fonts-recommended -y
RUN apt-get install texlive-extra-utils -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq texlive-latex-extra

# fix current font content and update catalog
ENV font-version = $(ls -la ./fonts/ | sha256sum)

COPY ./fonts/* /usr/share/fonts/opentype/
