FROM --platform=linux/amd64 verlai/verl:app-verl0.5-vllm0.9.1-mcore0.12.2-te2.2

# Copy in scripts
COPY --chmod=755 scripts/start.sh /start.sh
COPY --chmod=755 scripts/setup.sh /setup.sh

# Install core dependencies
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssh-server

# Further setup for dev tools
RUN /setup.sh

CMD ["/start.sh"]