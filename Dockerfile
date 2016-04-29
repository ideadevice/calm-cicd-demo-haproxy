FROM haproxy:1.6
# defaults for the variables used in haproxy.cfg
ENV DNS_TCP_ADDR 127.0.0.1
ENV DNS_TCP_PORT 5353
EXPOSE 80
