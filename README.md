# everyday

A Docker image for everyday use:

- Rebuilt every week
- Tracks `ubuntu:latest`
- APT cache is not cleared (so that apt install runs out of the box)
- Man pages are available

```bash
docker run --rm -it ghcr.io/maxmouchet/everyday:main
```
