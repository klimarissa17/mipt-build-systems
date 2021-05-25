FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git
RUN apt-get -y install tzdata
RUN apt-get install -y cmake build-essential libssl-dev libboost-all-dev libcurl4-gnutls-dev pkg-config doxygen libgsasl7-dev gnutls-dev sendmail
RUN git clone https://github.com/akhtyamovpavel/PatternsCollection.git
RUN cd PatternsCollection && mkdir bld && cd bld && cmake .. && make
