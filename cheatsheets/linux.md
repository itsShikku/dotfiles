du -sh . :: Zeigt die Größe des aktuellen Ordners an
df -h :: Zeigt die Speicherbelegung der Festplatten an
sudo kill -9 $(lsof -t -i:) :: Killt einen Prozess auf einem bestimmten Port
btop :: Zeigt Prozess-Auslastung und System-Stats an
cd /mnt/c/Users/ :: Wechselt in den Windows-Downloads Ordner (WSL)
find . -name "*.log" :: Sucht rekursiv nach .log Dateien
grep -r "suchbegriff" . :: Sucht einen Begriff in allen Dateien des Ordners
chmod +x datei.sh :: Macht eine Datei ausführbar
chown user:group datei :: Ändert Besitzer und Gruppe einer Datei
systemctl status service :: Prüft Status eines Dienstes
systemctl restart service :: Startet einen Dienst neu
journalctl -u service -f :: Zeigt Live-Logs eines Dienstes
ip addr show :: Zeigt IP-Konfiguration an
ss -tulpn :: Zeigt alle offenen Ports
dig domain.de :: Analysiert DNS-Einträge
sudo !! :: Führt den letzten Befehl mit Root-Rechten aus
  ```
