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
sleep 1 && curl -s https://raw.githubusercontent.com/tinnguyen162002/logo/main/logo.sh | bash && sleep 1

echo -e '\n\e[42mInstall Docker\e[0m\n' && sleep 1
sudo apt install docker.io -y

docker run -d --restart unless-stopped --pull always --name tinnn exordelabs/exorde-cli -m 0x7886BF372f519741A636bE71d1d4b29f6978844c -l 4

docker run -d --restart unless-stopped --pull always --name tinnn1 exordelabs/exorde-cli -m 0x7886BF372f519741A636bE71d1d4b29f6978844c -l 4

docker run -d --restart unless-stopped --pull always --name tinnn2 exordelabs/exorde-cli -m 0x7886BF372f519741A636bE71d1d4b29f6978844c -l 4

docker run -d --restart unless-stopped --pull always --name tinnn3 exordelabs/exorde-cli -m 0x7886BF372f519741A636bE71d1d4b29f6978844c -l 4

docker run -d --restart unless-stopped --pull always --name tinnn4 exordelabs/exorde-cli -m 0x7886BF372f519741A636bE71d1d4b29f6978844c -l 4

docker continer logs -f tinnn

htop




