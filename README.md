# AGMF Agentic Coding Workshop

This repository contains the OpenCode configuration and the essential shell commands for the AGMF Agentic Coding Workshop, so you can set everything up without having to adjust the configuration by hand.

## Prerequisites

- Linux or MacOS with a terminal
- Access to the Sauron/LiteLLM service and an API key

## Setup

1. First, persist your personal API key in your shell configuration:

   **Linux (bash):**

   ```bash
   echo 'export SAURON_LITELLM_KEY="YOUR_API_KEY"' >> ~/.bashrc
   source ~/.bashrc
   ```

   **MacOS (zsh):**

   ```bash
   echo 'export SAURON_LITELLM_KEY="YOUR_API_KEY"' >> ~/.zshrc
   source ~/.zshrc
   ```

   Replace `YOUR_API_KEY` with your key. MacOS uses `zsh` by default, so the key goes into `~/.zshrc` there. The OpenCode configuration reads the key from the environment variable `SAURON_LITELLM_KEY`. Make sure to set the variable before installing and starting OpenCode.

2. Install OpenCode:

   ```bash
   curl -fsSL https://opencode.ai/v2/install | bash
   ```

3. Clone this repository and change into the directory:

   ```bash
   git clone https://github.com/dbreu/AGMF-Agentic-Coding-Workshop.git
   cd AGMF-Agentic-Coding-Workshop
   ```

4. Create the OpenCode configuration directory and copy the provided configuration into it:

   ```bash
   mkdir -p ~/.config/opencode
   cp opencode.json ~/.config/opencode/opencode.json
   ```

5. Start OpenCode:

   ```bash
   opencode
   ```

## Files

- `opencode.json` – OpenCode configuration for the Sauron provider and the workshop model.
- `commands.sh` – a short collection of the basic setup commands.

## Notes

- The key is persisted in `~/.bashrc` or `~/.zshrc`, so it is also available in new terminals. If your key changes, adjust the corresponding line in the file.
- Keep your API key confidential. Do not put it into `opencode.json` and do not commit it to the repository.
- If you want to adjust the configuration, edit `opencode.json` in the repository and copy it to `~/.config/opencode/opencode.json` again.
