# vscode-server custom

Custom image for [code-server](https://github.com/coder/code-server) with:

- Node.js (via `n`)
- Python 3
- PHP CLI
- Docker CLI (with optional docker.sock access)

## 📦 Getting Started

### Run with Docker

```bash
docker run -it --rm \
  -e PASSWORD="root" \
  -p 8443:8080 \
  -v "$PWD:/home/coder/project" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  ghcr.io/lucasgalvaonunes/vscode-server:latest
```

> Access at: http://localhost:8443

## 🛠 Features

- ✅ Preinstalled Node.js LTS (via `n`)
- ✅ Python 3 & Pip
- ✅ PHP CLI
- ✅ Docker CLI (with access to host socket if mounted)
- ✅ Sudo enabled for `coder` user

## 🔐 Default Credentials

- **User**: `coder`
- **Password**: `root` (set via environment variable `PASSWORD` if needed)

## 🐳 GHCR

Image is hosted at:  
👉 [ghcr.io/lucasgalvaonunes/vscode-server](https://ghcr.io/lucasgalvaonunes/vscode-server)

