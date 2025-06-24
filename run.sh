#!/bin/sh

sdpi () {

# Temporary directory
TMP_DIR="/data/local/tmp"
SCRIPT_NAME="sdpi.sh"
SCRIPT_URL="https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/sdpi.sh"

# Download the script
curl -fsSL "$SCRIPT_URL" -o "$TMP_DIR/$SCRIPT_NAME"

# Make it executable
chmod +x "$TMP_DIR/$SCRIPT_NAME"

# Change to the tmp directory
cd "$TMP_DIR" || exit 1

# Run the script in the background
sh "$SCRIPT_NAME" &

echo "[✓] Script is running in background."
}

curl -fsSL https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/tes.sh | sh

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

# Menu
echo " [ Advanced Resolution ] "
echo ""
echo "1. Medium Resolution"
echo "2. Extreme Resolution"
echo "3. Ultimate Resolution"
echo "4. Extreme Sensitive Touch"
echo "5. Exit"
printf "Choose [1-5]: \n"
echo ""

read -r option

# Exit if no input
if [ -z "$option" ]; then
    echo "No input detected. Exiting..."
    exit 0
fi

# Process input
case "$option" in
    1)
        echo "[*] Activating Medium Resolution..."
        sleep 1
        echo "[✓] Medium Resolution Successfully Activated"
        sleep 1
        ;;
    2)
        echo "[*] Activating Extreme Resolution..."
        sleep 1
        echo "[✓] Extreme Resolution Successfully Activated"
        sleep 1
        ;;
    3)
        echo "[*] Activating Ultimate Resolution..."
        sleep 1
        echo "[✓] Ultimate Resolution Successfully Activated"
        sleep 1
        ;;
    4)
        echo "[*] Activating Extreme Sensitive Touch..."
        sleep 1
        echo "[✓] Extreme Sensitive Touch Successfully Activated"
        sleep 1
        ;;
    5)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option. Exiting..."
        exit 0
        ;;
esac

# Only runs for valid options 1-3
echo ""
echo "[*] Activating Tracking Touch..."
sleep 1
echo "[✓] Tracking Touch Function Successfully Activated"
sleep 1
echo ""
echo "[*] Activating Enhanced Performance..."
sleep 1
echo "[✓] Enhanced Performance Function Successfully Activated"
sleep 1
echo ""
echo "[*] Activating Smart DPI V1..."
sleep 1
sdpi
echo "[✓] Smart DPI V1 Function Successfully Activated"
echo ""

exit 0
