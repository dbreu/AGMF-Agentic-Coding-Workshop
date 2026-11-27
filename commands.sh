echo 'export SAURON_LITELLM_KEY="the-key-I-give-you"' >> ~/.bashrc #Linux
source ~/.bashrc

echo 'export SAURON_LITELLM_KEY="the-key-I-give-you"' >> ~/.zshrc #MacOS
source ~/.zshrc

curl -fsSL https://opencode.ai/v2/install | bash

nano ~/.config/opencode/opencode.json
