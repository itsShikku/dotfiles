# 🐧 LINUX & WSL ESSENTIALS

### 📦 System & Speicher
* **Ordnergröße im Klartext anzeigen:**
  ```bash
  du -sh <ordnername>
  ```
* **Festplattenbelegung anzeigen:**
  ```bash
  df -h
  ```

### ⚡ Prozess-Voodoo (Wenn etwas hängt)
* **Prozess auf bestimmtem Port blockieren/killen:**
  ```bash
  sudo kill -9 $(lsof -t -i:<port>)
  ```
* **Auslastung live und schick anzeigen:**
  ```bash
  btop
  ```

### 🌐 WSL Besonderheiten
* **Windows-Pfad in WSL ansteuern:**
  ```bash
  cd /mnt/c/Users/<DeinName>/Downloads
  ```
