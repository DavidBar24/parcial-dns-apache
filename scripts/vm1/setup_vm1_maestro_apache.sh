#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y bind9 bind9utils dnsutils apache2

# Habilitar módulos Apache
sudo a2enmod deflate headers

# Habilitar site y config (asumiendo que ya copiaste archivos a rutas correctas)
sudo a2ensite parcial.conf || true
sudo a2enconf parcial-deflate.conf || true

sudo systemctl restart bind9
sudo systemctl restart apache2

echo "VM1 listo: BIND9 maestro + Apache con mod_deflate."