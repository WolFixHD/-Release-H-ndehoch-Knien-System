Hallo zusammen! 👋

Ich habe ein kleines, aber nützliches Script für FiveM erstellt, das es ermöglicht, dass Spieler ihre Hände mit der **"H"**-Taste hochnehmen, sich mit der **Enter-Taste** hinknien und die Animation mit einer anderen Taste abbrechen können. Außerdem gibt es eine Integration mit Handschellen! Wenn der Spieler Handschellen anlegt, werden die Hände automatisch heruntergenommen, die **Enter-Taste** wird wieder freigegeben und die Knielogik wird zurückgesetzt.

### **Features:**

* **Hände hochnehmen**: Drücke die **"H"**-Taste, um die Hände hochzunehmen und die Animation zu starten.
* **Hinknien**: Mit der **Enter-Taste** kann der Spieler sich hinknien, wenn die Hände oben sind.
* **Abbrechen der Knielogik**: Mit der **"X"** oder **"H"**-Taste kann das Knien abgebrochen werden.
* **Handschellen-Integration**: Wenn der Spieler Handschellen anlegt (via `exports["jobs_creator"]:setHandcuffs(playerId, true)`), wird die Hände-hoch-Animation gestoppt, die **Enter-Taste** freigegeben und der Knielstatus zurückgesetzt.

Installation:

Lade das Script in deinen FiveM Server-Ordner.
Stelle sicher, dass alle Abhängigkeiten wie brutal_notify und okokTextUI korrekt installiert sind.
Füge das Script in der server.cfg hinzu:

start handsup_kneel

### **Weitere Anmerkungen:**

    Animations-IDs: Falls du andere Animationen für das Heben der Hände oder das Knien verwenden möchtest, kannst du die Animationen anpassen.
    Abhängigkeiten: Dieses Script verwendet brutal_notify für Benachrichtigungen und okokTextUI für das Text-UI. Achte darauf, dass diese Ressourcen auf deinem Server vorhanden sind.

Ich hoffe, das hilft euch weiter! Wenn ihr Fragen oder Anmerkungen habt, schreibt mir gerne.
Schlusswort:

    Stelle sicher, dass du alle Abhängigkeiten auf deinem Server hast, damit das Script ohne Probleme läuft.
    Das Script lässt sich leicht anpassen, je nach deinen Wünschen für Animationen oder Interaktionen.

### **Download:** 

## Checklist

- [x] I have reviewed the latest version of the [Releases rules](https://forum.cfx.re/t/240725).
- [x] I have included a detailed description of my work as described in the rules.
- [x] I have included a download link or a store link.
- [x] I have filled out the required information at the end of the topic

**If you're selling your resource, please include the following information at the end of your post:**
|                                         |                                |
|-------------------------------------|----------------------------|
| Code is accessible       | Yes/No                 |
| Subscription-based      | Yes/No                 |
| Lines (approximately)  | Number of lines  |
| Requirements                | Requirements      |
| Support                           | Yes/No                 |

|                             |                 |
|-----------------------------|-----------------|
| Assets are accessible       | Yes/No          |
| Subscription-based          | Yes/No          |
| Polygons (model and LOD)    | Number of polys |
| Texture size and amount     | Number          |
| Requirements & dependencies | Requirements    |
| Support                     | Yes/No          |

|                             |                    |
|-----------------------------|--------------------|
| Code is accessible          | Yes/No             |
| Subscription-based          | Yes/No             |
| MLO                         | Yes/No             |
| Number of rooms             | Number of rooms    |
| Number of entities          | Number of entities |
| Requirements & dependencies | Requirements       |
| Support                     | Yes/No             |