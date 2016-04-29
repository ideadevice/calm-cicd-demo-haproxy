FROM haproxy:1.6
# defaults for the variables used in haproxy.cfg
ENV DNS_TCP_ADDR 127.0.0.1
ENV DNS_TCP_PORT 5353
COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
RUN mkdir -p /etc/confd/conf.d
COPY ./cicd_demo.toml /etc/confd/conf.d/cicd_demo.toml
RUN mkdir -p /etc/confd/templates
COPY ./haproxy.cfg.tmpl /etc/confd/templates/haproxy.cfg.tmpl
ADD ./confd /bin/
EXPOSE 80


