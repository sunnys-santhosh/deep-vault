# 🔍 Deep Vault

> AI-powered research assistant for Obsidian, powered by Claude

Deep Vault brings the intelligence of Anthropic's Claude directly into your Obsidian vault. Summarise notes, chat with your research, synthesise ideas across multiple notes, search your entire vault with natural language, auto-tag notes, run custom prompt templates, and generate daily research digests — all without leaving Obsidian.

---

## ✨ Features

### 🔬 Research Tab
- **6 Quick Actions** — Summarise, Questions, Concepts, Gaps, Connections, Literature Review
- **🏷 Auto-Tag Notes** — Claude analyses your note and suggests relevant tags; pick the ones you want and apply them directly to your frontmatter with one click
- **📰 Daily Research Digest** — Summarise all notes you've worked on recently (last 24hrs, 7 days, or 30 days) into a structured digest with key ideas, connections, open questions, and next steps

### 💬 Chat Tab
- Full multi-turn conversation with Claude — it remembers what you said earlier in the session
- **📄 Use Note** — inject your current note as context with one click
- **🌐 Web Search** — toggle on to let Claude search the internet for current information, fact-checking, and recent research
- `Enter` to send, `Shift+Enter` for new line

### 🔗 Synthesis Tab
- Select 2 or more notes from your vault using the note browser
- Choose a synthesis mode:
  - **Summarise All** — unified summary across selected notes
  - **Compare** — similarities and differences
  - **Connect** — common themes and patterns
  - **Literature Review** — academic-style overview
- Export the synthesis as a new Obsidian note

### 📝 Templates Tab
- Save and reuse your own custom Claude prompts
- **6 built-in templates** to get you started:
  - 📋 Executive Summary
  - 🔬 Critical Analysis
  - 🧒 Explain Simply
  - ✅ Action Items
  - ⚔️ Counter Arguments
  - 🐦 Tweet Thread
- **Full template editor** — name, icon, prompt text, toggle note context on/off
- Quick insert variables: `{{note_title}}`, `{{date}}`
- Run any template against your current note with one click
- Results appear in the Research tab with export option

### 🔍 Search Tab
- Search across your **entire vault** using natural language
- Filter by folder and set max notes to scan
- Smart relevance scoring — notes ranked by keyword matches in titles, headings and tags
- Claude synthesises a unified answer with citations
- **Clickable source chips** — click any source note to open it instantly
- Export results as a new note

### 📋 History Tab
- Full session log of every query and Claude response
- Save any individual message as a new note
- **Export full session history** as a single structured note
- Clear history when you want a fresh start

---

## 🚀 Installation

### From Obsidian Community Plugins *(coming soon)*
1. Open Obsidian → Settings → Community Plugins
2. Search for **"Deep Vault"**
3. Install → Enable

### Manual Installation
1. Download the latest release from [GitHub Releases](https://github.com/sunnys-santhosh/deep-vault/releases)
2. Copy `main.js`, `manifest.json`, and `styles.css` to:
   ```
   <your-vault>/.obsidian/plugins/deep-vault/
   ```
3. Reload Obsidian
4. Enable the plugin: Settings → Community Plugins → Deep Vault → Enable

---

## ⚙️ Setup

1. Get your **Anthropic API key** from [console.anthropic.com](https://console.anthropic.com)
2. Open Obsidian → Settings → **Deep Vault**
3. Paste your API key
4. Choose your preferred Claude model (Sonnet recommended)
5. Click the 🔍 icon in the left ribbon to open Deep Vault

---

## 💰 Cost

The plugin is **completely free**. You need your own Anthropic API key and pay only for what you use:

| Action | Approx. Cost |
|---|---|
| Summarise a note | ~$0.001 |
| Chat message | ~$0.001 |
| Vault-wide search (20 notes) | ~$0.005 |
| Daily digest (15 notes) | ~$0.005 |
| Heavy daily use (1 month) | ~$1–3 |

A **$5 credit** will last most users several months of regular use.

---

## ⌨️ Commands

Deep Vault registers these Obsidian commands (accessible via `Ctrl+P`):

| Command | Description |
|---|---|
| `Open Deep Vault panel` | Open the sidebar panel |
| `Generate daily research digest` | Instantly trigger a 24hr digest |
| `Export current note analysis to new note` | Quick export shortcut |

---

## ⚙️ Settings

| Setting | Description |
|---|---|
| **API Key** | Your Anthropic API key — stored locally, never shared |
| **Claude Model** | Sonnet 4 (recommended) or Haiku 4.5 (faster, cheaper) |
| **Max Response Length** | 500–4000 tokens |
| **Enable Web Search** | Allow Claude to search the web in Chat tab |
| **Export Folder** | Vault folder where exported notes are saved (default: `Deep Vault Exports`) |

---

## 🗺 Roadmap

- [x] Research tab with 6 quick actions
- [x] Chat with history and web search
- [x] Multi-note synthesis
- [x] Export responses as notes
- [x] Custom prompt templates
- [x] Auto-tag notes
- [x] Vault-wide search
- [x] Daily research digest
- [ ] Setup wizard for new users
- [ ] Keyboard shortcuts for all actions
- [ ] Mobile support
- [ ] Vault-wide topic graph

---

## 🛠 Development

```bash
# Clone the repo
git clone https://github.com/sunnys-santhosh/deep-vault
cd deep-vault

# Install dependencies
npm install

# Build for development (watch mode)
npm run dev

# Build for production
npm run build
```

### Branch Structure
```
main          ← stable releases
  └── dev     ← integration branch
        └── feature/*   ← one branch per feature
```

### Deploying to Obsidian
Copy the 3 built files to your vault's plugin folder:
```
<vault>/.obsidian/plugins/deep-vault/main.js
<vault>/.obsidian/plugins/deep-vault/manifest.json
<vault>/.obsidian/plugins/deep-vault/styles.css
```

---

## 📋 Changelog

### v3.0.4
- 📰 Daily Research Digest — summarise recent notes with configurable time range
- Available as Obsidian command for instant access

### v3.0.3
- 🔍 Vault-Wide Search — natural language search across entire vault
- Smart relevance scoring, source citations, clickable note chips

### v3.0.2
- 🏷 Auto-Tag Notes — Claude suggests tags, applies to frontmatter
- Vault-aware tag suggestions using existing tags

### v3.0.1
- 📝 Custom Prompt Templates — save, edit and reuse prompts
- 6 built-in starter templates
- Template editor modal with variable support

### v2.3.0
- 🔗 Multi-note synthesis with 4 modes
- 💾 Export any response as a new Obsidian note
- 🌐 Web search integration in Chat tab
- 📋 Session history with full export

### v2.0.0
- Complete UI redesign with tabbed interface
- Full chat with conversation history
- Proper markdown rendering
- Light/dark theme support

### v1.0.0
- Initial release
- Basic sidebar with 4 quick actions
- Claude API integration

---

## 📄 License

MIT License — free to use, modify, and distribute.

---

## ❤️ Support

If Deep Vault helps your research, consider [buying me a coffee](https://buymeacoffee.com)!

Found a bug or have a feature request? [Open an issue on GitHub](https://github.com/sunnys-santhosh/deep-vault/issues).