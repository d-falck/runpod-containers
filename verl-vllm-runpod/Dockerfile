# Extend the VERL base image
FROM verlai/verl:app-verl0.5-vllm0.9.1-mcore0.12.2-te2.2

# Copy startup scripts to the container
COPY scripts/start.sh /start.sh
COPY scripts/post_start.sh /post_start.sh

# Make scripts executable
RUN chmod +x /start.sh /post_start.sh

# The start.sh script will handle all initialization and call post_start.sh
ENTRYPOINT ["/start.sh"]