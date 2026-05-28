# ==========================================
# LOKALE KONFIGURATION (NICHT IM REPO)
# ==========================================
if [ -f "$HOME/.proxy_settings" ]; then
  source "$HOME/.proxy_settings"
fi

if [ -f "$HOME/.bash_aliases" ]; then
  source "$HOME/.bash_aliases"
fi

# ==========================================
# HISTORY OPTIMIERUNG
# ==========================================
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
shopt -s checkwinsize
shopt -s cdspell # Tippfehler beim cd werden korrigiert

# ==========================================
# FZF KONFIGURATION
# ==========================================
# Aktiviere fzf key bindings (Strg + R)
source /usr/share/doc/fzf/examples/key-bindings.bash
# Optische Anpassung für fzf-Menüs
export FZF_DEFAULT_OPTS="--height 40% --reverse --border --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8,fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc,marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# ==========================================
# ALIASES & TOOLS
# ==========================================
# eza (moderne ls Alternative)
alias ls='eza --icons=always --color=always --group-directories-first'
alias ll='eza --icons=always --color=always --group-directories-first -lah --git'
alias la='eza --icons=always --color=always --group-directories-first -a'

# Tools & Skripte
alias fv='nvim $(fzf)'
alias bat='batcat'
alias update-all='~/dotfiles/update.sh'

# ==========================================
# INITIALISIERUNG
# ==========================================

# Die Funktion selbst
_cheat_func() {
  local CHEAT_DIR="$HOME/dotfiles/cheatsheets"
  # Auswahl treffen
  local SELECTION=$(grep -h ' :: ' "$CHEAT_DIR"/*.md | fzf --height 50% --header="Wähle Befehl")

  if [ -n "$SELECTION" ]; then
    # Extrahiere den Befehl: Alles vor dem ersten " :: "
    # Wir entfernen auch den Pfad, falls grep -h ihn anzeigt
    local CMD=$(echo "$SELECTION" | sed 's/.*:git/git/' | awk -F ' :: ' '{print $1}')

    # Das ist der entscheidende Befehl, um Text in die Eingabezeile zu "schreiben"
    READLINE_LINE="$CMD"
    READLINE_POINT=${#READLINE_LINE}
  fi
}

# Funktion exportieren und an einen Shortcut binden
# Strg+o wird zum "Einfüger"
bind -x '"\C-o": _cheat_func'

# Starship Prompt (sollte immer am Ende stehen)
eval "$(starship init bash)"

# Schneller Überblick beim Start (optional)
if command -v fastfetch &>/dev/null; then
  fastfetch
fi
