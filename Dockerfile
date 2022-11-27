FROM registry.centos.org/centos

# Install cool software
RUN yum update -y && \
yum -y install \
nmap iproute bash && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "192.168.126.0/24"] 
