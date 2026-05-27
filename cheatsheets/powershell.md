# 🚀 PowerShell Essentials (System-Admin Edition)

## 🎯 Quick-Start: Objekt-Magie
> Das wichtigste Prinzip: Alles ist ein Objekt! Textbasiertes Parsen war gestern.

* **`Get-Command`** – Finde den richtigen Befehl (z. B. `Get-Command *service*`).
* **`Get-Member`** – Zeigt alle Eigenschaften eines Objekts (Blick unter die Haube).
* **`| Out-GridView`** – Der absolute Game-Changer. Leite jede Liste hier hinein für eine interaktive, durchsuchbare GUI-Tabelle (z. B. `Get-Service | Out-GridView`).

---

## 🛠️ System-Diagnose & Troubleshooting

| Aktion | Befehl | Beschreibung |
| :--- | :--- | :--- |
| **Fehler finden** | `Get-EventLog -LogName System -EntryType Error -Newest 20` | Zeigt die letzten 20 Systemfehler. |
| **Dienste prüfen** | `Get-Service \| Where-Object Status -eq 'Stopped'` | Listet alle gestoppten Dienste auf. |
| **Prozesse sortieren** | `Get-Process \| Sort-Object WorkingSet -Descending \| Select-Object -First 10` | Top 10 RAM-Verbraucher. |
| **Autostart prüfen** | `Get-CimInstance Win32_StartupCommand` | Listet alle Autostart-Programme auf. |
| **Hardware-Inventar** | `Get-CimInstance Win32_BIOS \| Select-Object SerialNumber, Manufacturer` | Liest Seriennummer & Hersteller aus. |

---

## 💾 Speicher & Dateien

| Aktion | Befehl | Beschreibung |
| :--- | :--- | :--- |
| **Top 10 größte Dateien** | `Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue \| Sort-Object Length -Descending \| Select-Object -First 10 Name, @{N='Size(MB)';E={$_.Length/1MB -as [int]}}` | Findet die größten Dateien im Ordner. |
| **Text suchen (grep)** | `Get-ChildItem -Recurse -File \| Select-String -Pattern "Suchbegriff"` | Durchsucht Dateien nach Inhalt. |

### 📊 Skript: Ordner-Größen analysieren (Speicherfresser)
Kopiere diesen Block in die Konsole, um die Top 10 der größten Ordner im aktuellen Ver
