#!/bin/sh
# ==========================================
# Enigma2 Installer Script for python.py
# ==========================================

PLUGIN_PATH="/usr/lib/enigma2/python/Plugins/Extensions/MyPluginName"
PYTHON_URL="wget -qO- https://raw.githubusercontent.com/TAOUFIK-SAT/enigma-script/refs/heads/main/installer.sh"

echo ">>> Creating plugin directory..."
mkdir -p $PLUGIN_PATH

echo ">>> Downloading python script..."
wget -O "$PLUGIN_PATH/python.py" "$PYTHON_URL"

if [ $? -eq 0 ]; then
    echo ">>> Download completed successfully!"
    echo ">>> Setting permissions..."
    chmod 755 "$PLUGIN_PATH/python.py"
    echo ">>> Installation finished! Please restart Enigma2 GUI."
else
    echo ">>> Error: Download failed. Please check your internet connection or the URL."
fi
exit 0
