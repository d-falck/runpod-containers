FROM --platform=linux/amd64 runpod/pytorch:2.8.0-py3.11-cuda12.8.1-cudnn-devel-ubuntu22.04

# Copy in scripts
COPY --chmod=755 scripts/setup.sh /setup.sh
COPY --chmod=755 scripts/start.sh /start.sh

# Further setup for dev tools
RUN /setup.sh
