# E-commerce Landing Page

A modern e-commerce landing page built with Next.js, React, and Supabase.

## 🚀 Quick Start

### Prerequisites
- Node.js 20+
- pnpm (or npm/yarn)

### Installation

```bash
# Install dependencies
pnpm install

# Copy environment template
cp env.production.template .env.production

# Edit .env.production with your credentials

# Run development server
pnpm dev
```

## 📦 Deployment

### Deploy to Hostinger

```bash
# Interactive deployment
pnpm run deploy:interactive

# Or use FTP deployment
pnpm run deploy:ftp

# Check deployment status
pnpm run deploy:check
```

See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed instructions.

## 🔧 Available Scripts

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm start` - Start production server
- `pnpm deploy` - Deploy to Hostinger (FTP)
- `pnpm deploy:check` - Check deployment status
- `pnpm setup:mcp` - Set up Hostinger MCP server

## 📚 Documentation

- [DEPLOYMENT.md](./DEPLOYMENT.md) - Full deployment guide
- [DEPLOY_NOW.md](./DEPLOY_NOW.md) - Quick deployment steps
- [HOSTINGER_MCP_SETUP.md](./HOSTINGER_MCP_SETUP.md) - MCP server setup
- [QUICK_START_DEPLOYMENT.md](./QUICK_START_DEPLOYMENT.md) - Quick start guide

## 🛠️ Tech Stack

- **Framework**: Next.js 16
- **UI**: React 19, Tailwind CSS
- **Database**: Supabase
- **Deployment**: Hostinger

## 📝 License

Private project
