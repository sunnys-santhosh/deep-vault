# 🔍 Deep Vault

> AI-powered research assistant for Obsidian, powered by Claude

Deep Vault brings the power of Anthropic's Claude directly into your Obsidian vault — helping you summarize notes, extract key concepts, identify research gaps, and ask anything about your knowledge base.

---

## ✨ Features

- **📄 Summarize Notes** — Get a concise bullet-point summary of any note
- **❓ Key Questions** — Generate insightful follow-up research questions
- **💡 Extract Concepts** — Pull out and explain core ideas and terminology
- **🔭 Research Gaps** — Identify what's missing or needs more investigation
- **💬 Ask Anything** — Custom queries with your current note as context
- **🎛 Sidebar Panel** — Clean, non-intrusive research panel on the right

---

## 🚀 Installation

### From Obsidian Community Plugins (once published)
1. Open Obsidian → Settings → Community Plugins
2. Search for **"Deep Vault"**
3. Click Install → Enable

### Manual Installation
1. Download the latest release from GitHub
2. Copy `main.js`, `manifest.json`, and `styles.css` to:
   `.obsidian/plugins/deep-vault/`
3. Reload Obsidian
4. Enable the plugin in Settings → Community Plugins

---

## ⚙️ Setup

1. Get your **Anthropic API key** from [console.anthropic.com](https://console.anthropic.com)
2. Open Obsidian → Settings → **Deep Vault**
3. Paste your API key
4. Choose your preferred Claude model (Sonnet recommended)
5. Click the 🔍 icon in the ribbon to open the panel

---

## 💰 Cost

- The plugin itself is **completely free**
- You need your own **Anthropic API key** (pay-as-you-go)
- Typical research queries cost **fractions of a cent**
- Claude Haiku option available for even lower costs

---

## 🛠 Development

```bash
# Clone the repo
git clone https://github.com/your-username/deep-vault
cd deep-vault

# Install dependencies
npm install

# Build for development (with watch)
npm run dev

# Build for production
npm run build
```

Copy the output files to your vault's plugin folder:
```
.obsidian/plugins/deep-vault/main.js
.obsidian/plugins/deep-vault/manifest.json
.obsidian/plugins/deep-vault/styles.css
```

---

## 📋 Roadmap

- [ ] Multi-note synthesis (combine linked notes)
- [ ] Chat history within session
- [ ] Export responses to new notes
- [ ] Web search integration
- [ ] Custom prompt templates

---

## 📄 License

MIT License — free to use, modify, and distribute.

---

## ❤️ Support

If Deep Vault helps your research, consider [buying me a coffee](https://buymeacoffee.com/your-username)!

Found a bug or have a feature request? [Open an issue on GitHub](https://github.com/your-username/deep-vault/issues).
