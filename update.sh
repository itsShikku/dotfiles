#!/bin/bash

# Farben für die Ausgabe
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}--- Starte System- und Tool-Wartung ---${NC}"

# 1. System-Updates
echo -e "${GREEN}Update System-Pakete...${NC}"
sudo apt update && sudo apt upgrade -y

# 2. Starship Update
if command -v starship &>/dev/null; then
  echo -e "${GREEN}Update Starship...${NC}"
  # Das offizielle Installationsskript überschreibt die alte Version mit der neuesten
  curl -sS https://starship.rs/install.sh | sh -s -- -y
else
  echo "Starship nicht gefunden, überspringe..."
fi

# 3. Repository-Status festhalten
# Da wir hier ein Skript im dotfiles-Ordner haben,
# könnten wir Änderungen hier direkt committen.
echo -e "${BLUE}--- Wartung abgeschlossen! ---${NC}"
