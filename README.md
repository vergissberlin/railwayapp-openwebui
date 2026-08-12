# Open WebUI for railway.app

![Template Header](./template-header.svg)

Deploy Open WebUI on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/REPLACE_WITH_RAILWAY_TEMPLATE_CODE?referralCode=2_sIT9&utm_medium=integration&utm_source=template&utm_campaign=generic)

## ✨ Features

* Chat UI for local and remote LLMs (Ollama, OpenAI-compatible APIs)
* Retrieval-augmented generation (RAG) with document upload
* User management with role-based access control
* Persistent volume for chats, uploads, and settings

## 🚀 Quick Start

1. Click "Deploy on Railway"
2. Set the environment variables listed below
3. Attach a volume at `/app/backend/data` before sending production traffic
4. Wait for the build and open the generated URL

## ⚙️ Configuration

### Environment variables

```bash
WEBUI_SECRET_KEY=   # Generate a random secret in the Railway dashboard
```

Set real credentials as Railway variables, never in a file inside this repository.

### Optional

* `PORT`: HTTP port Open WebUI binds to (default: `8080`). Railway sets this for you;
  leave it alone unless you also change the domain's target port.

## 💾 Persistence

`railway.toml` declares `requiredMountPath = "/app/backend/data"`. Attach a Railway volume to that
path before production traffic, otherwise all data is lost on every redeploy.

## 🐳 Local Development

```bash
git clone https://github.com/vergissberlin/railwayapp-openwebui.git
cd railwayapp-openwebui
cp .env.example .env
docker compose up -d
```

Then open http://localhost:8080.

## 🪲 Bug Reporting

Found a bug? [Create an issue](https://github.com/vergissberlin/railwayapp-openwebui/issues/new) or open a pull request with a fix.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## 📝 License

MIT — see [LICENSE](LICENSE).

## 🔒 Security

* All credentials are supplied as environment variables, never committed
* Railway terminates TLS for the generated domain
* Renovate keeps the pinned upstream image up to date

## Railway runtime defaults

`railway.toml` ships these defaults:

* Healthcheck path: `/health`
* Restart policy: `ON_FAILURE` with up to 10 retries
* Dockerfile-based build

Open WebUI listens on `$PORT` directly, so no start command is configured.

## 📚 Resources

* [Open WebUI documentation](https://docs.openwebui.com/)
* [Railway documentation](https://docs.railway.app/)
* [Template updates](https://docs.railway.com/reference/templates#updatable-templates)

<!-- footer -->
