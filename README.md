# RunPod Containers

Custom Docker containers for RunPod deployment.

## Containers

- [verl-runpod](./verl-runpod/) - VERL image with RunPod scripts
- [basic-runpod](./basic-runpod/) - basic RunPod image plus custom startup script
- [pytorch-runpod](./pytorch-runpod/) - PyTorch image with RunPod scripts

## Build

```bash
docker build -t <username>/<container>:latest -f containers/<container>/Dockerfile .
```

## Push.
docker push <username>/<container>:latest
```