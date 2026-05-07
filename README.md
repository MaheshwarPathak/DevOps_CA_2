# CI/CD Containerized Web Service

This repository demonstrates a secure DevOps workflow with:

- A simple Express.js web service with `/health` and `/status` routes
- Deployment configuration validation using Open Policy Agent (OPA)
- Docker containerization
- Dependency and container scanning with Snyk
- Git hook enforcement using Husky
- GitHub Actions CI/CD pipeline for validation and Docker build

## Key Files

- `index.js` - Express application with health and status endpoints
- `deployment.json` - deployment configuration used by OPA
- `policy/production.rego` - OPA policy rules for deployment validation
- `Dockerfile` - container image build definition
- `.github/workflows/deploy.yml` - GitHub Actions workflow
- `.husky/pre-commit` - Husky hook to run Snyk before commits

## Local Validation

Install dependencies:

```bash
npm install
```

Run the app locally:

```bash
npm start
```

Validate OPA policy:

```bash
npm run validate:opa
```

Run Snyk dependency scan:

```bash
npm run snyk:scan
```

Build Docker image and scan container:

```bash
npm run snyk:container
```

## GitHub Actions

The workflow runs on every push to `main` and performs:

1. `npm install`
2. OPA policy validation
3. Snyk dependency scan
4. Docker image build
5. Snyk container vulnerability scan

> Add `SNYK_TOKEN` as a GitHub secret to enable the Snyk steps.
