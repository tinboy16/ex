#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi
 curl -s https://raw.githubusercontent.com/tinnguyen162002/logo/main/logo.sh | bash && sleep 1

echo -e '\n\e[42mInstall Docker\e[0m\n' && sleep 1
sudo apt install docker.io -y

docker run -d --restart unless-stopped --pull always --name tinnn exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn1 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4


docker continer logs -f tinnn





