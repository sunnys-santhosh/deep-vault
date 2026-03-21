# 🚀 Deep Vault — Publishing Guide
## How to Submit to the Obsidian Community Plugin Directory

> Use this guide when you are ready to publish. There is no deadline — publish when
> you are confident the plugin is stable and well tested.

---

## ✅ Pre-Publication Checklist

Work through this list before submitting. Every item matters.

### Code Quality
- [ ] Plugin builds without errors (`npm run build`)
- [ ] No `console.log` debug statements in production code
- [ ] No hardcoded API keys or secrets anywhere in code
- [ ] No use of `eval()` or dynamic code execution
- [ ] Error handling on all API calls — no unhandled promise rejections
- [ ] Plugin loads and unloads cleanly (test by toggling enable/disable)

### Testing
- [ ] Tested on **Windows**
- [ ] Tested on **Linux** (your desktop)
- [ ] Tested on **Mac** (if possible — ask a friend)
- [ ] Tested on **Obsidian Mobile** (iOS or Android)
- [ ] Tested with a vault that has **no notes** (empty state)
- [ ] Tested with a vault that has **100+ notes** (performance)
- [ ] Tested with **no API key** set (graceful error message shown)
- [ ] Tested with an **invalid API key** (graceful error message shown)
- [ ] All 6 quick actions work correctly
- [ ] Chat sends and receives messages correctly
- [ ] Web search toggle works
- [ ] Synthesis works with 2+ notes selected
- [ ] Templates create, edit, run and delete correctly
- [ ] Auto-tag suggests and applies tags to frontmatter correctly
- [ ] Vault-wide search returns results and source chips
- [ ] Daily digest generates for all 3 time ranges
- [ ] Export creates notes in correct folder
- [ ] Setup wizard opens on first install
- [ ] All keyboard commands work via Command Palette
- [ ] Plugin settings save and persist after Obsidian restart

### GitHub Repository
- [ ] Repository is **public**
- [ ] `manifest.json` has correct `id`, `name`, `author`, `version`
- [ ] `manifest.json` has `"isDesktopOnly": false`
- [ ] Latest **GitHub Release** is tagged with the version number
- [ ] Release assets include `main.js`, `manifest.json`, `styles.css`
- [ ] `README.md` is comprehensive (see README checklist below)
- [ ] No sensitive data in git history

### README Checklist
- [ ] Clear description of what the plugin does
- [ ] Screenshots or animated GIF showing the UI
- [ ] Installation instructions (manual + community)
- [ ] Setup instructions (how to get API key)
- [ ] Feature list covering all tabs and actions
- [ ] Cost/pricing explanation
- [ ] Link to report bugs (GitHub Issues)

---

## 📸 Screenshots Guide

Good screenshots dramatically improve approval chances and user adoption.

### Tools
- **Windows:** `Win + Shift + S` for snip, or [ShareX](https://getsharex.com/) for full control
- **Animated GIF:** [ScreenToGif](https://www.screentogif.com/) — free, excellent quality
- **Image optimisation:** [Squoosh](https://squoosh.app/) — compress before uploading

### Screenshots to Capture

| Filename | What to show |
|---|---|
| `01-research-tab.png` | Research tab with 6 action cards visible |
| `02-research-result.png` | A quick action result (e.g. Summarise) with markdown response |
| `03-chat-tab.png` | Chat tab with a 2-3 message conversation |
| `04-auto-tag.png` | Auto-tag picker with several tags selected |
| `05-vault-search.png` | Search results with source chips visible |
| `06-daily-digest.png` | A daily digest result with all 5 sections |
| `07-templates-tab.png` | Templates tab showing the built-in template cards |
| `08-setup-wizard.png` | Setup wizard welcome or model picker step |
| `09-mobile.png` | Mobile view showing icon-only tabs |
| `demo.gif` | 20-30 second animated demo of the core workflow |

### Demo GIF Script (ScreenToGif)
1. Open Obsidian, navigate to a research note
2. Start recording in ScreenToGif
3. Click the 🔍 ribbon icon to open Deep Vault
4. Click **Summarise** — wait for result
5. Switch to Chat tab — type a short question — send
6. Switch to Templates tab — run a template
7. Stop recording
8. Export: 800×600px, 15fps, max 5MB

### Where to Save
```
E:\projects\deep-vault\
  docs\
    screenshots\
      01-research-tab.png
      02-research-result.png
      ...
      demo.gif
```

### Add to README
```markdown
## Screenshots

![Research Tab](docs/screenshots/01-research-tab.png)
![Chat](docs/screenshots/03-chat-tab.png)
![Auto-Tag](docs/screenshots/04-auto-tag.png)

![Demo](docs/screenshots/demo.gif)
```

---

## 🏷 Versioning Guide

Follow [Semantic Versioning](https://semver.org/):

```
MAJOR.MINOR.PATCH

MAJOR → Breaking changes (rare)
MINOR → New features
PATCH → Bug fixes
```

Examples:
- Bug fix → `3.1.2` → `3.1.3`
- New feature → `3.1.2` → `3.2.0`
- Major rewrite → `3.1.2` → `4.0.0`

### How to Release a New Version

```cmd
cd E:\projects\deep-vault

# 1. Make your changes on a feature branch
git checkout -b feature/my-fix
# ... make changes ...
npm run build

# 2. Update version in manifest.json
# Change "version": "3.1.2" to "version": "3.1.3"

# 3. Commit and merge
git add .
git commit -m "fix: describe what you fixed"
git push
git checkout dev
git merge feature/my-fix
git push
git checkout main
git merge dev
git push

# 4. Create GitHub release
# Go to github.com/sunnys-santhosh/deep-vault
# Releases → Draft new release
# Tag: 3.1.3  Title: Deep Vault v3.1.3
# Attach: main.js, manifest.json, styles.css
# Publish release
```

---

## 📋 Submission Steps

When you are ready, follow these steps exactly.

### Step 1 — Fork obsidian-releases
1. Go to [github.com/obsidianmd/obsidian-releases](https://github.com/obsidianmd/obsidian-releases)
2. Click **Fork** → **Create fork**

### Step 2 — Clone your fork
```cmd
cd E:\projects
git clone https://github.com/sunnys-santhosh/obsidian-releases.git
cd obsidian-releases
```

### Step 3 — Add your plugin entry
Open `community-plugins.json` in VS Code:
```cmd
code community-plugins.json
```

Find the correct alphabetical position for `deep-vault` (under D) and insert:
```json
{
  "id": "deep-vault",
  "name": "Deep Vault",
  "author": "Sunny Santhosh",
  "description": "AI-powered research assistant using Claude. Summarise notes, chat with your vault, synthesise ideas, search across all notes, auto-tag, and generate daily digests.",
  "repo": "sunnys-santhosh/deep-vault"
},
```

> Make sure there is a comma after the previous entry and valid JSON throughout.

### Step 4 — Validate JSON
Before committing, validate your JSON:
1. Copy the entire file content
2. Paste into [jsonlint.com](https://jsonlint.com/)
3. Fix any errors shown

### Step 5 — Commit and push
```cmd
git checkout -b add-deep-vault-plugin
git add community-plugins.json
git commit -m "Add Deep Vault plugin"
git push -u origin add-deep-vault-plugin
```

### Step 6 — Open Pull Request
1. Go to **github.com/sunnys-santhosh/obsidian-releases**
2. Click **Compare & pull request**
3. Set base repository: `obsidianmd/obsidian-releases` → branch: `master`
4. Title: `Add Deep Vault — AI research assistant powered by Claude`
5. Description — paste this checklist:

```markdown
## Plugin Submission

**Deep Vault** is an AI-powered research assistant for Obsidian, powered by Anthropic's Claude.

### Features
- Research tab with 6 quick actions, auto-tag and daily digest
- Multi-turn chat with web search support
- Multi-note synthesis (4 modes)
- Custom prompt templates
- Vault-wide natural language search
- 5-step setup wizard for new users
- 14 keyboard commands
- Full mobile support

### Checklist
- [x] Plugin id `deep-vault` is unique
- [x] Public GitHub repo with valid manifest.json
- [x] Latest release includes main.js, manifest.json, styles.css
- [x] Does not use eval() or dangerous code
- [x] isDesktopOnly: false (mobile supported)
- [x] Tested on desktop and mobile
- [x] README with screenshots and setup instructions
```

6. Click **Create Pull Request**

---

## ⏱ What Happens After Submission

| Timeline | What happens |
|---|---|
| Day 1-3 | Automated checks run on your PR |
| Day 3-14 | Obsidian team reviews your code |
| Day 7-28 | Comments or approval |
| After merge | Plugin appears in community browser within 24 hours |

### Common Rejection Reasons
- `manifest.json` version doesn't match release tag
- Missing `main.js`, `manifest.json` or `styles.css` in release assets
- README is too thin — add more detail
- Plugin crashes on load — thorough testing required
- Invalid JSON in `community-plugins.json` PR

### If You Get Feedback
- Read comments carefully
- Make requested changes on your branch
- Push the fix — the PR updates automatically
- Reply to the comment confirming what you changed

---

## 📣 Promotion Strategy

Once approved, get the word out:

### Day 1 — Announce
- **Obsidian Discord** `#share-showcase` — post with demo GIF
- **Reddit r/ObsidianMD** — write a proper post with use cases
- **Twitter/X** — short video demo, tag `@obsdmd`

### Week 1 — Build Awareness
- **Reddit r/Zettelkasten** — focus on research workflow angle
- **Reddit r/PKMS** — personal knowledge management audience
- **Hacker News** — if you want a technical audience

### Ongoing
- Respond to all GitHub issues promptly
- Post updates when you release new features
- Consider a **Product Hunt** launch once you have some users

---

## 🔧 Maintaining After Launch

### Responding to Issues
- Aim to respond within 48 hours
- Use GitHub Issue templates for bug reports
- Tag issues: `bug`, `enhancement`, `question`

### Keeping Up with Obsidian Updates
- Watch [github.com/obsidianmd/obsidian-api](https://github.com/obsidianmd/obsidian-api) for changes
- Test after major Obsidian releases
- Update `minAppVersion` in manifest if needed

### Keeping Up with Anthropic Updates
- Watch [docs.anthropic.com](https://docs.anthropic.com) for model deprecations
- Update model strings when new models release
- Check API changelog for breaking changes

---

*Document created: March 2026*
*Deep Vault version at time of writing: 3.1.2*