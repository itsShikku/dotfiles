#!/bin/bash

# Farben für die Ausgabe
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo -e "${BLUE}=== Starte zukunftssichere Dotfiles-Installation ===${NC}"

# Universelle Funktion zum Erstellen von Symlinks mit Backup-Schutz
link_file() {
  local source="$1"
  local target="$2"

  # Prüfen, ob am Zielort bereits etwas existiert (Datei, Ordner oder alter Link)
  if [ -e "$target" ] || [ -L "$target" ]; then
    # Wenn es schon ein korrekter Symlink auf unsere Dotfiles ist, müssen wir nichts tun
    if [ "$(readlink "$target")" == "$source" ]; then
      echo -e "${GREEN}✔ Bereits korrekt verknüpft: $target${NC}"
      return
    fi
    echo -e "${YELLOW}Hinweis: $target existiert bereits. Erstelle Backup...${NC}"
    mv "$target" "${target}.bak.$(date +%Y%m%d_%H%M%S)"
  fi

  # Den eigentlichen Symlink erstellen
  ln -s "$source" "$target"
  echo -e "${GREEN}✔ Verknüpfung erstellt: $target -> $source${NC}"
}

# Sicherstellen, dass der .config Ordner im System existiert
mkdir -p "$CONFIG_DIR"

# 1. Die .bashrc verknüpfen
echo -e "\n${BLUE}[1/2] Verknüpfe Bash-Konfiguration...${NC}"
link_file "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"

# 2. Alle Tools aus dem config-Ordner dynamisch verknüpfen (Starship, LazyVim, etc.)
echo -e "\n${BLUE}[2/2] Verknüpfe Anwendungen aus config/...${NC}"
for item in "$DOTFILES_DIR/config"/*; do
  # Falls der Ordner komplett leer sein sollte, Schleife abbrechen
  [ -e "$item" ] || continue

  base_name=$(basename "$item")
  link_file "$item" "$CONFIG_DIR/$base_name"
done

echo -e "\n${GREEN}=== Setup erfolgreich abgeschlossen! ===${NC}"
echo -e "Führe ${YELLOW}source ~/.bashrc${NC} aus, um dein Terminal zu aktualisieren."
