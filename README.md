# everyday

A Docker image for everyday use:

- Rebuilt every week
- Tracks `ubuntu:rolling`
- APT cache is not cleared (so that apt install runs out of the box)
- Man pages are available

```bash
# Docker
docker run --rm -it ghcr.io/maxmouchet/everyday:main

# Kubernetes
kubectl run everyday --rm -it --image ghcr.io/maxmouchet/everyday:main

# Mikrotik
/container/add remote-image=ghcr.io/maxmouchet/everyday:main interface=veth-xxx cmd="sleep infinity"
/container/start [find where tag=ghcr.io/maxmouchet/everyday:main]
/container/shell [find where tag=ghcr.io/maxmouchet/everyday:main]
```
