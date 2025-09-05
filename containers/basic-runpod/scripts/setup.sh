# Setup git:
git config --global user.name "Damon Falck"
git config --global user.email "damon.falck@gmail.com"

# Github cli

(type -p wget >/dev/null || (apt update && apt install wget -y)) \
	&& mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat $out | tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& apt update \
	&& apt install gh -y

# Install other tools

apt-get update
apt-get -y install git-lfs
apt-get -y install tree
apt-get -y install nano
apt-get -y install htop
apt-get -y install jq
apt-get -y install tmux

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.17.0".
nvm current # Should print "v22.17.0".

# Verify npm version:
npm -v # Should print "10.9.2".

# Install claude-code:
npm install -g @anthropic-ai/claude-code

# Add HF_HOME to bashrc
echo 'export HF_HOME=/workspace/cache' >> ~/.bashrc

echo 'export LANG=C.UTF-8' >> ~/.bashrc
echo 'export LC_CTYPE=$LANG' >> ~/.bashrc

echo "set -g mouse on" >> ~/.tmux.conf

# Install uv:
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Setup uv completion:
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc

# Still will need to do:
# gh auth login
# claude (to auth the first time)
# uv install whatever you need
