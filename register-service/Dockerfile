# Use a base image
FROM alpine

# Install any necessary dependencies
RUN apk --no-cache add curl

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint script as executable
RUN chmod +x /entrypoint.sh

# Specify the entrypoint script to run when the container starts
ENTRYPOINT ["/entrypoint.sh"]
