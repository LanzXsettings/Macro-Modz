#!/bin/sh

sdpi() {

TMP_DIR="/data/local/tmp"
SCRIPT_NAME="sdpi.sh"

# Change to tmp and run
if cd "$TMP_DIR"; then
    pkill -f "$SCRIPT_NAME"
    sleep 1
    echo "[✓] Smart DPI V1 Successfully Deactivated"
else
    echo "[✗] Failed Cannot Find Smart DPI !!"
    exit 1
fi
}

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Uninstalling..' > /dev/null 2>&1

# Banner
cat << "EOF"
   


▀█▀ █░█░█ █▀▀ ▄▀█ █▄▀
░█░ ▀▄▀▄▀ ██▄ █▀█ █░█

█▀ █░█ █▀█ █▀▀ █▀█ █ █▀█ █▀█
▄█ █▄█ █▀▀ ██▄ █▀▄ █ █▄█ █▀▄ 𝙇𝙕 𝙭 𝙓𝘾

EOF

# Function to get and display device information
get_device_info() {
    echo ""
    echo " [ Information ] "
    echo ""
    
    MANUFACTURER=$(getprop ro.product.manufacturer)
    ANDROID_VERSION=$(getprop ro.build.version.release)
    
    echo "Manufacturer    : $MANUFACTURER"
    echo "Android Version : $ANDROID_VERSION"
    echo "Developer       : LanzSettings"
    echo "Credit          : Xay Citter"
    echo "File Version    : V1"
    echo "File Type       : Medium"
    echo ""
}

get_device_info

echo "[*] Deactivating Ultimate Resolution..."
sleep 1
echo "[✓] Ultimate Resolution Successfully Deactivated"
sleep 1
echo ""
echo "[*] Deactivating Tracking Touch..."
sleep 1
echo "[✓] Tracking Touch Successfully Deactivated"
sleep 1
echo ""
echo "[*] Deactivating Enhanced Performance..."
sleep 1
echo "[✓] Enhanced Performance Successfully Deactivated"
sleep 1
echo ""
sdpi
echo ""

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

exit 0
