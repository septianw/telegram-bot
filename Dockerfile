FROM ailispaw/ubuntu-essential:14.04-nodoc

ADD . /root/
RUN /root/prepare.sh
RUN /root/launch.sh install
WORKDIR /root/
