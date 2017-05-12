FROM ailispaw/ubuntu-essential:14.04-nodoc

ADD $(pwd) /root/
RUN /root/prepare.sh
RUN /root/launch.sh install
