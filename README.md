# AGMF Agentic Coding Workshop

Dieses Repository enthält die OpenCode-Konfiguration und die wichtigsten Shell-Befehle für den AGMF-Agentic-Coding-Workshop. So kannst du die Einrichtung übernehmen, ohne die Konfiguration von Hand anpassen zu müssen.

## Voraussetzungen

- Ein Terminal mit `bash`
- Zugriff auf den Sauron-/LiteLLM-Dienst und einen API-Key

## Einrichtung

1. Setze zuerst deinen persönlichen API-Key für die aktuelle Terminalsitzung:

   ```bash
   export SAURON_LITELLM_KEY="DEIN_API_KEY"
   ```

   Ersetze `DEIN_API_KEY` durch deinen Key. Die OpenCode-Konfiguration liest den Key aus der Umgebungsvariable `SAURON_LITELLM_KEY`. Setze die Variable unbedingt, bevor du OpenCode installierst und startest.

2. Installiere OpenCode:

   ```bash
   curl -fsSL https://opencode.ai/v2/install | bash
   ```

3. Klone dieses Repository und wechsle in das Verzeichnis:

   ```bash
   git clone https://github.com/dbreu/AGMF-Agentic-Coding-Workshop.git
   cd AGMF-Agentic-Coding-Workshop
   ```

4. Lege den OpenCode-Konfigurationsordner an und kopiere die bereitgestellte Konfiguration dorthin:

   ```bash
   mkdir -p ~/.config/opencode
   cp opencode.json ~/.config/opencode/opencode.json
   ```

5. Starte OpenCode:

   ```bash
   opencode
   ```

## Dateien

- `opencode.json` – OpenCode-Konfiguration für den Sauron-Provider und das Workshop-Modell.
- `commands.sh` – kurze Sammlung der grundlegenden Einrichtungsbefehle.

## Hinweise

- Der `export`-Befehl gilt nur für das aktuelle Terminal. Wenn du OpenCode später in einem neuen Terminal startest, musst du die Variable erneut setzen oder sie lokal in deiner Shell-Konfiguration hinterlegen.
- Behandle deinen API-Key vertraulich. Trage ihn nicht in `opencode.json` ein und committe ihn nicht ins Repository.
- Falls du die Konfiguration anpassen möchtest, bearbeite `opencode.json` im Repository und kopiere sie anschließend erneut nach `~/.config/opencode/opencode.json`.
