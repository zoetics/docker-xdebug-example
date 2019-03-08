FROM alpine:edge

WORKDIR /root/

# setting empty password
RUN passwd -d root

# add openssh and clean
RUN apk add --update openssh make \
    && rm  -rf /tmp/* /var/cache/apk/*

# add entrypoint script
COPY ./docker-entrypoint.sh /usr/local/bin
# add ssh config
COPY ./sshd_config /etc/ssh/sshd_config
# add make
COPY ./Makefile /root/

# make sure we get fresh keys
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key

EXPOSE 22
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/sshd","-D"]