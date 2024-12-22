Händehoch & Knien System mit Handschellen-Integration
Beschreibung

Dieses FiveM-Script ermöglicht es Spielern, ihre Hände hochzunehmen, sich mit der Enter-Taste hinzuknien und die Aktion mit einer anderen Taste abzubrechen. Das Script enthält auch eine Handschellen-Integration. Wenn der Spieler Handschellen anlegt, wird die Händehoch-Animation gestoppt, die Enter-Taste freigegeben und der Kniel-Status zurückgesetzt.
Features

    Hände hochnehmen: Drücke die "H"-Taste, um die Hände hochzunehmen und die Animation zu starten.
    Hinknien: Mit der Enter-Taste kann der Spieler sich hinknien, wenn die Hände oben sind.
    Abbrechen der Knielogik: Mit der "X" oder "H"-Taste kann das Knien abgebrochen werden.
    Handschellen-Integration: Wenn der Spieler Handschellen anlegt (via exports["jobs_creator"]:setHandcuffs(playerId, true)), wird die Hände-hoch-Animation gestoppt, die Enter-Taste freigegeben und der Kniel-Status zurückgesetzt.

Abhängigkeiten

Das Script benötigt folgende Ressourcen:

    brutal_notify: Für Benachrichtigungen, um dem Spieler wichtige Informationen zu geben (z. B. wenn er sich hinkniet oder die Hände wieder runternimmt).
    okokTextUI: Für das Text-UI, das dem Spieler Hinweise gibt, z. B. die Aufforderung, die Enter-Taste zu drücken, um sich hinzuknien.

Stelle sicher, dass beide Abhängigkeiten auf deinem Server installiert sind, da sie für das vollständige Funktionieren des Scripts erforderlich sind.
Installation

    Lade das Script in den resources-Ordner deines Servers hoch.
    Füge das Script in deiner server.cfg hinzu:

start handsup_kneel

    Stelle sicher, dass die Abhängigkeiten wie brutal_notify und okokTextUI ebenfalls installiert und korrekt konfiguriert sind.

Nutzung

    Drücke die "H"-Taste, um die Hände des Spielers hochzunehmen.
    Drücke die Enter-Taste, um dich hinzuknien (wenn die Hände oben sind).
    Drücke "X" oder "H", um das Knien abzubrechen und die Hände wieder herunterzunehmen.
    Wenn der Spieler Handschellen anlegt, wird die Enter-Taste freigegeben und die Händehoch-Animation wird gestoppt.

Hinweise

    Dieses Script ist sehr flexibel und kann einfach an deine eigenen Wünsche und Animationen angepasst werden.
    Falls du andere Animationen oder Funktionen nutzen möchtest, kannst du die jeweiligen Parameter im Code ändern.

Lizenz

Dieses Projekt ist unter der MIT-Lizenz lizenziert – siehe die LICENSE-Datei für Details.
