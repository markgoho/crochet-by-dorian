#!/bin/bash

set -e # Exit immediately if a command fails

echo "Installing Bun..."
curl -fsSL https://bun.sh/install | bash

echo "Installing Homebrew..."
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

echo "Installing Sass..."
# You may need to add brew to your path first:
if ! command -v brew &> /dev/null
then
    echo "Adding brew to PATH"
    echo >> /home/vscode/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
brew install sass/sass/sass

echo "Post-create script completed."
