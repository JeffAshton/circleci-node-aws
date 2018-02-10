FROM circleci/node:6.12.3-stretch

RUN sudo apt-get install -y awscli
ADD ./assume-role.sh /usr/bin/aws-assume-role
