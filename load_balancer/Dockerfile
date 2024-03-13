FROM haproxy:2.3

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Expose the port HAProxy listens on
EXPOSE 80

# Command to start HAProxy
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]