# VERL RunPod

Extends the verl VLLM application image with RunPod initialization.

## Build

```bash
docker build -t <username>/verl-runpod:latest .
docker push <username>/verl-runpod:latest
```

## Environment Variables

- `PUBLIC_KEY` - SSH public key
- `JUPYTER_PASSWORD` - Jupyter password (port 8888)

## Scripts

- `start.sh` - Main init (nginx, SSH, Jupyter)
- `post_start.sh` - Installs dev tools (uv, gh, node, claude-code)