# AGMF Agentic Coding Workshop

Dieses Repository enthält die OpenCode-Konfiguration und die wichtigsten Shell-Befehle für den AGMF-Agentic-Coding-Workshop. So kannst du die Einrichtung übernehmen, ohne die Konfiguration von Hand anpassen zu müssen.

## Voraussetzungen

- Linux oder MacOS mit einem Terminal
- Zugriff auf den Sauron-/LiteLLM-Dienst und einen API-Key

## Einrichtung

1. Hinterlege zuerst deinen persönlichen API-Key dauerhaft in deiner Shell-Konfiguration:

   **Linux (bash):**

   ```bash
   echo 'export SAURON_LITELLM_KEY="DEIN_API_KEY"' >> ~/.bashrc
   source ~/.bashrc
   ```

   **MacOS (zsh):**

   ```bash
   echo 'export SAURON_LITELLM_KEY="DEIN_API_KEY"' >> ~/.zshrc
   source ~/.zshrc
   ```

   Ersetze `DEIN_API_KEY` durch deinen Key. MacOS nutzt standardmäßig `zsh`, daher kommt der Key dort in `~/.zshrc`. Die OpenCode-Konfiguration liest den Key aus der Umgebungsvariable `SAURON_LITELLM_KEY`. Hinterlege die Variable unbedingt, bevor du OpenCode installierst und startest.

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

- Der Key wird dauerhaft in `~/.bashrc` bzw. `~/.zshrc` hinterlegt und gilt damit auch in neuen Terminals. Wenn sich dein Key ändert, passe die entsprechende Zeile in der Datei an.
- Behandle deinen API-Key vertraulich. Trage ihn nicht in `opencode.json` ein und committe ihn nicht ins Repository.
- Falls du die Konfiguration anpassen möchtest, bearbeite `opencode.json` im Repository und kopiere sie anschließend erneut nach `~/.config/opencode/opencode.json`.
