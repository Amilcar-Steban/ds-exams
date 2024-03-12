# Use the official Consul image from Docker Hub
FROM consul:1.15

# Expose Consul ports (8500 for HTTP GUI, 8300 for RPC, 8301 for Serf LAN, 8302 for Serf WAN, and 8600 for DNS)
EXPOSE 8500 8600

# Start Consul in server mode (adjust configuration as needed)
CMD ["agent", "-server", "-bootstrap-expect=1", "-ui", "-client=0.0.0.0"]
