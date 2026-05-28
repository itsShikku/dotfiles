# 🛠️ Shikku Dotfiles

Willkommen in meinem zentralen Dotfiles-Repository! Ich nutze es gerade als Testgelände, um mehr über GitHub zu lernen, und verwalte hier meine persönlichen Konfigurationen für eine produktive Terminal-Umgebung.

Dieses Setup basiert auf der modernen **XDG-Struktur** (alle Tools spiegeln sich im `.config/`-Ordner wider).

---

## 📦 Benötigte Software

Bevor das Installations-Skript ausgeführt wird, sollten die folgenden Tools auf dem System installiert sein:

| Tool | Beschreibung | Installationsbefehl (Debian/Ubuntu) |
| :--- | :--- | :--- |
| **Neovim** | Moderner Texteditor (LazyVim Basis) | `sudo apt install -y neovim` |
| **btop** | Visueller und interaktiver Taskmanager | `sudo apt install -y btop` |
| **eza** | Moderner, farbiger `ls`-Ersatz | `sudo apt install -y eza` |
| fzf | Fuzzy Finder für schnelles Suchen | `sudo apt install -y fzf`
| **Starship** | Extrem schneller & schicker Shell-Prompt | *Siehe unten* |

### Starship Prompt installieren:

```bash
curl -sS https://starship.rs/install.sh | sh
```

---

## 🚀 Installation & Einrichtung

Wenn die oben genannte Software installiert ist, kann das Setup mit folgenden Schritten eingerichtet werden:

1. **Repository klonen:**
   ```bash
   git clone https://github.com/itsShikku/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Skript ausführen:** Das Skript verlinkt die `bashrc` und alle Ordner aus `config/` automatisch nach `~/.config/`.
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Terminal aktualisieren:**
   ```bash
   source ~/.bashrc
   ```

---

## 🧠 Cheatsheet-System
Ich nutze ein in meinen Dotfiles integriertes Tool `cheat`, um schnell auf meine Notizen zuzugreifen.

- **Verwendung:** `cheat` (öffnet die interaktive Suche)
- **Bearbeiten:** `cheat -e` (öffnet das ausgewählte Sheet in Neovim)
- **Daten:** Alle Spickzettel liegen im Ordner `~/dotfiles/cheatsheets/`.

--- 

## 📂 Struktur des Repositories

```text
├── cheatsheets/          # Gemütlicher Befehlsfinder mit cheat und STRG+o zum Einfügen
│   ├── git.md
│   └── linux.md
├── config/
│   ├── btop/             # Konfiguration für den Taskmanager
│   ├── nvim/             # LazyVim & Neovim Einstellungen
│   └── starship.toml     # Design des Shell-Prompts
├── bashrc                # Erweiterungen für Aliase und Terminal-Verhalten
├── cheat                 # Dein neues interaktives Terminal-Tool
├── install.sh            # Dynamisches Bash-Skript für die Symlink-Verknüpfung
└── README.md             # Dokumentation inkl. Anleitung zum cheat-Tool
```
