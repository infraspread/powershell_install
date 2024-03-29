#!/bin/sh
echo "use this script using "
echo "wget -O - https://raw.githubusercontent.com/infraspread/powershell_install/main/powershell_install_debian.sh | bash"
echo "or"
echo "bash <(curl -s https://raw.githubusercontent.com/infraspread/powershell_install/main/powershell_install_debian.sh)"
echo ""
apt-get update
apt-get install -y wget
source /etc/os-release

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/debian/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository GPG keys file
rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
apt-get update

# Install PowerShell
apt-get install -y powershell

echo "start powershell with pwsh"
