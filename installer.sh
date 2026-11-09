#!/bin/sh
# ==========================================
# Installer Script for PanelStore Plugin
# ==========================================

PLUGIN_PATH="/usr/lib/enigma2/python/Plugins/Extensions/PanelStore"

echo ">>> Creating PanelStore directory..."
mkdir -p "$PLUGIN_PATH" > /dev/null 2>&1

echo ">>> Downloading PanelStore plugin..."
wget -q -O "$PLUGIN_PATH/__init__.py" "https://raw.githubusercontent.com/TAOUFIK-SAT/enigma-script/main/PanelStore/__init__.py"
wget -q -O "$PLUGIN_PATH/plugin.py" "https://raw.githubusercontent.com/TAOUFIK-SAT/enigma-script/main/PanelStore/plugin.py"

if [ $? -eq 0 ]; then
    chmod 755 "$PLUGIN_PATH/"*.py > /dev/null 2>&1
    echo "------------------------------------------"
    echo ">>> SUCCESS: PanelStore installed successfully!"
    echo ">>> Please restart Enigma2 GUI now."
    echo "------------------------------------------"
else
    echo ">>> Error: Download failed. Please check your internet connection."
fi
exit 0
