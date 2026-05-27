# 🛠️ GIT CHEATSHEET

### ↩️ Fehler beheben & Zeitreise
* **Letzten Commit rückgängig machen (Code bleibt erhalten):**
  ```bash
  git reset --soft HEAD~1
  ```
* **Letzte Commit-Nachricht korrigieren:**
  ```bash
  git commit --amend -m "Neue Nachricht"
  ```
* **Einzelne Datei auf GitHub-Stand zurücksetzen:**
  ```bash
  git checkout HEAD -- <dateipfad>
  ```

### 🌿 Branch-Management
* **Lokale Branches anzeigen:**
  ```bash
  git branch
  ```
* **Neuen Branch erstellen & hinwechseln:**
  ```bash
  git checkout -b <branch-name>
  ```
* **Branch brutal löschen:**
  ```bash
  git branch -D <branch-name>
  ```
