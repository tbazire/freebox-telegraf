FROM telegraf:latest
RUN apt update && apt upgrade && dpkg --configure -a
RUN apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common python3-distutils
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py --prefix=/usr/local
RUN python3 -m pip install requests
RUN pip install unidecode