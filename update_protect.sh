#!/bin/bash
# This script replaces all occurrences of Malzxyz to Schnuffelll in the Pterodactyl panel files and adds a shield icon to Active label.

# Replace case-sensitive variations
sudo find /var/lib/pterodactyl -type f -exec sed -i 's/Malzxyz/Schnuffelll/g' {} \;
sudo find /var/lib/pterodactyl -type f -exec sed -i 's/MALZXYZ/SCHNUFFELLL/g' {} \;
sudo find /var/lib/pterodactyl -type f -exec sed -i 's/malzxyz/schnuffelll/g' {} \;

# Add shield icon to Active status in server list
sudo sed -i "s/Active/Active 🛡️/g" /var/lib/pterodactyl/resources/views/admin/servers/index.blade.php

echo "Branding updated to Schnuffelll and shield icon added."
