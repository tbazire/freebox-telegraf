FROM arm64v8/telegraf:latest
RUN apt-get update && apt-get upgrade && dpkg --configure -a
RUN apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl gnupg-agent software-properties-common python3-distutils
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py --prefix=/usr/local
RUN python3 -m pip install requests
RUN pip install unidecode
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
