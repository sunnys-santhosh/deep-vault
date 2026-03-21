# 🔍 Deep Vault — Session Memory
*Last updated: March 2026*

---

## 👤 About the Developer
- **Name:** Sunny Santhosh
- **GitHub:** github.com/sunnys-santhosh
- **OS:** Windows laptop (primary dev) + Linux Desktop (Obsidian installed)
- **Dev Drive:** E: drive (all project files live here)

---

## 🗂 Project Location

| Item | Path |
|---|---|
| Plugin source | `E:\projects\deep-vault\` |
| Obsidian portable | `E:\Obsidian\` |
| Plugin deployed to | `E:\Obsidian\vault\.obsidian\plugins\deep-vault\` |
| Deploy script | `E:\projects\deep-vault\deploy.bat` |
| Node.js | `E:\nodejs\` |
| npm cache | `E:\npm-cache\` |
| GitHub repo | `github.com/sunnys-santhosh/deep-vault` |

---

## 🌿 Git Branch Structure

```
main          ← stable releases
  └── dev     ← integration branch
        └── feature/*   ← one branch per feature
```

### Branch Workflow
```cmd
git checkout dev
git checkout -b feature/new-feature
# ... build and test ...
git add .
git commit -m "feat: description"
git push
git checkout dev
git merge feature/new-feature
git push
git checkout main
git merge dev
git push
```

---

## 📦 Current Version: 3.1.2

### Build & Deploy Commands
```cmd
cd E:\projects\deep-vault
npm run build
deploy.bat
```

### Reload Obsidian after deploy
`Ctrl+P` → "Reload app without saving"

---

## ✅ Features Built

| Version | Feature | Status |
|---|---|---|
| v1.0 | Basic sidebar, 4 quick actions, Claude API | ✅ Done |
| v2.0 | Tabbed UI, chat history, markdown rendering | ✅ Done |
| v2.3 | Synthesis, export to notes, web search, history | ✅ Done |
| v3.0.1 | Custom prompt templates + editor modal | ✅ Done |
| v3.0.2 | Auto-tag notes with frontmatter writing | ✅ Done |
| v3.0.3 | Vault-wide natural language search | ✅ Done |
| v3.0.4 | Daily research digest (24hr/7d/30d) | ✅ Done |
| v3.1.0 | Setup wizard + 14 keyboard commands | ✅ Done |
| v3.1.1 | Mobile support + touch swipe | ✅ Done |
| v3.1.2 | README polish + PUBLISHING.md guide | ✅ Done |

---

## 🗺 Remaining Roadmap

| Feature | Priority | Notes |
|---|---|---|
| Take screenshots & demo GIF | 🔴 High | Required before community submission |
| Submit to Obsidian community | 🔴 High | Follow PUBLISHING.md in repo |
| Promote on Discord/Reddit/Twitter | 🟡 Medium | After community approval |
| Vault-wide topic graph | 🟢 Future | Visual connections between notes |
| Streaks / usage stats | 🟢 Future | Gamify daily research habits |
| Collaborative vaults | 🟢 Future | Share templates across team |

---

## 🔑 Key Technical Details

### API
- **Endpoint:** `https://api.anthropic.com/v1/messages`
- **Model (default):** `claude-sonnet-4-20250514`
- **Model (fast):** `claude-haiku-4-5-20251001`
- **Web search header:** `anthropic-beta: web-search-2025-03-05`
- **API key:** stored in Obsidian plugin settings, never in code

### Plugin Architecture
- **Language:** TypeScript → compiled to `main.js` via esbuild
- **Framework:** Obsidian Plugin API (ItemView, Modal, SuggestModal)
- **Tabs:** Research · Chat · Synthesis · Templates · Search · More
- **Settings interface:** `DeepVaultSettings` with `hasSeenWizard` flag
- **Mobile detection:** `app.isMobile` + `.dv-mobile` CSS class
- **Touch swipe:** `touchstart` / `touchend` listeners on root element

### Known Issues Fixed
- Multiline placeholder strings cause TS errors — always use single line strings
- Code comments with `- a` on their own line parsed as code — keep comments on one line
- `obsidian` package must be installed: `npm install --save-dev obsidian`
- `tsconfig.json` must use `"moduleResolution": "node"` not `"bundler"`

---

## 📋 Pre-Publication Checklist Status

- [ ] Screenshots taken (01-research, 02-chat, 03-autotag, 04-search, 05-digest, 06-wizard)
- [ ] Demo GIF recorded with ScreenToGif
- [ ] README updated with actual screenshot images
- [ ] Tested on Windows ✅
- [ ] Tested on Linux (Obsidian desktop)
- [ ] Tested on Mobile (iOS or Android)
- [ ] All features tested with empty vault
- [ ] All features tested with no API key set
- [ ] GitHub Release v3.1.2 created with 3 assets attached
- [ ] community-plugins.json PR submitted to obsidian-releases
- [ ] Promoted on Obsidian Discord #share-showcase
- [ ] Promoted on Reddit r/ObsidianMD

---

## 💬 How to Resume

Start a new session and say:

> **"resume Deep Vault"**

Then reference this file for full context. Claude will pick up exactly where we left off.

---

## 📁 Important Files in Repo

| File | Purpose |
|---|---|
| `src/main.ts` | All plugin code — TypeScript source |
| `styles.css` | All UI styles |
| `manifest.json` | Plugin metadata for Obsidian |
| `package.json` | npm dependencies and build scripts |
| `esbuild.config.mjs` | Bundler configuration |
| `tsconfig.json` | TypeScript compiler settings |
| `deploy.bat` | One-click deploy to Obsidian |
| `README.md` | Public-facing documentation |
| `PUBLISHING.md` | Step-by-step community submission guide |

---

*Generated at end of Deep Vault build session — March 2026*