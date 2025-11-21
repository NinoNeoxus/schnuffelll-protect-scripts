#!/bin/bash
# This script replaces all occurrences of Malzxyz with Schnuffelll in the Pterodactyl panel files and adds a shield icon to the Active label.

# Replace case-sensitive variations
sudo find /var/www/pterodactyl -type f -exec sed -i 's/Malzxyz/Schnuffelll/g' {} \;
sudo find /var/www/pterodactyl -type f -exec sed -i 's/MALZXYZ/SCHNUFFELLL/g' {} \;
sudo find /var/www/pterodactyl -type f -exec sed -i 's/malzxyz/schnuffelll/g' {} \;

# Add shield icon to Active status in server list
sudo sed -i "s/Active/Active \xf0\x9f\x9b\xa1\xef\xb8\x8f/g" /var/www/pterodactyl/resources/views/admin/servers/index.blade.php

echo "Branding updated to Schnuffelll and shield icon added."
