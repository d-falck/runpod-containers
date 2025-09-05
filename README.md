# RunPod Containers

Custom Docker containers for RunPod deployment.

## Containers

- [verl-runpod](./verl-runpod/) - VERL image with RunPod scripts
- [basic-runpod](./basic-runpod/) - basic RunPod image plus custom startup script

## Build

```bash
cd <container-name>
docker build -t <username>/<container>:latest .
docker push <username>/<container>:latest
```