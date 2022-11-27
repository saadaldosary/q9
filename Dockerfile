FROM centos
MAINTAINER Sander <mail@sandervanvugt.nl>

# Add repo file

# Install cool software
RUN yum --assumeyes update && \
yum --assumeyes install \
nmap iproute && \
bash && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "192.168.126.0/24"] 
