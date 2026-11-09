#!/bin/sh
# ==========================================
# Installer Script for PanelStore Plugin
# ==========================================

PLUGIN_PATH="/usr/lib/enigma2/python/Plugins/Extensions/PanelStore"

echo ">>> Creating PanelStore plugin directory..."
mkdir -p $PLUGIN_PATH

echo ">>> Downloading plugin.py..."
wget -O "$PLUGIN_PATH/plugin.py" "https://raw.githubusercontent.com/TAOUFIK-SAT/enigma-script/main/PanelStore/plugin.py"

echo ">>> Downloading __init__.py..."
wget -O "$PLUGIN_PATH/__init__.py" "https://raw.githubusercontent.com/TAOUFIK-SAT/enigma-script/main/PanelStore/__init__.py"

if [ $? -eq 0 ]; then
    echo ">>> Download completed successfully!"
    echo ">>> Setting correct permissions..."
    chmod 755 "$PLUGIN_PATH/"*.py
    echo ">>> Installation finished successfully!"
    echo ">>> Please restart Enigma2 GUI now."
else
    echo ">>> Error: Download failed. Please check your internet connection or URLs."
fi
exit 0
