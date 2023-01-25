#!/bin/bash

echo "Copying .ungoldmanrc to home directory"

# add .ungoldmanrc file to home directory
curl https://raw.githubusercontent.com/ungoldman/dotfiles/HEAD/remote/.ungoldmanrc > ~/.ungoldmanrc

# add source line in bashrc unless it's already there
if ! grep -q "source .ungoldmanrc" .bashrc; then
  echo "Adding .ungoldmanrc to .bashrc"
  echo $'\n# ungoldman remote helpers\nsource .ungoldmanrc' >> .bashrc
fi
