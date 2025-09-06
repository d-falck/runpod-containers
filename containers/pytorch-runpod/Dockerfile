FROM --platform=linux/amd64 pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime

# Copy in scripts
COPY --chmod=755 common/scripts/setup.sh /setup.sh
COPY --chmod=755 common/scripts/start.sh /start.sh

# Install core dependencies
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssh-server
RUN apt-get install -y curl

# Further setup for dev tools
RUN /setup.sh

CMD ["/start.sh"]