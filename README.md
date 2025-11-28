# mega-agency-n8n

Render-ready n8n repo optimized for the Mega Agency automation stack.

## Quick deploy (Render)
1. Create GitHub repo and push this project.
2. On Render, create a new **Web Service** and connect to this repo.
3. Ensure the service uses Docker (it will use `Dockerfile`).
4. In Render service -> Environment, add variables from `.env.example`.
   - **Make sure** `N8N_WEBHOOK_URL` and `N8N_WEBHOOK_URL_EXTERNAL` end with `/`.
   - Set `N8N_HOST=0.0.0.0`, `N8N_PORT=5678`, `N8N_PROTOCOL=https`.
5. Deploy. After deploy, confirm Editor & Webhook URLs point to your Render domain (not `0.0.0.0`).
6. Import workflows from `workflows/` folder via n8n Editor -> Import.

## Notes
- If you see `https://0.0.0.0:5678` in Editor, re-check env vars & that you're editing the correct Render service.
- Use `N8N_TRUST_PROXY=true` to avoid X-Forwarded-For rate-limit issues.
