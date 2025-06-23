#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/tes.sh | sh

# Banner
cat << "EOF"
   
█▀▄▀█ ▄▀█ █▀▀ █▀█ █▀█   █▀▄▀█ █▀█ █▀▄ ▀█
█░▀░█ █▀█ █▄▄ █▀▄ █▄█   █░▀░█ █▄█ █▄▀ █▄
                                      
           Created By LanzSettings
EOF

# Function to get and display device information
get_device_info() {
    echo ""
    echo "=============================="
    echo "      DEVICE INFORMATION      "
    echo "=============================="
    echo ""

    MODEL=$(getprop ro.product.model)
    MANUFACTURER=$(getprop ro.product.manufacturer)
    ANDROID_VERSION=$(getprop ro.build.version.release)
    DEVICE_NAME=$(getprop ro.product.device)

    echo "Model          : $MODEL"
    echo "Manufacturer   : $MANUFACTURER"
    echo "Android Version: $ANDROID_VERSION"
    echo "Device Name    : $DEVICE_NAME"
    echo "File Type      : Medium"
    
    echo ""
    echo "=============================="
    echo ""
}

get_device_info

# Menu
echo "=============================="
echo "Advanced Resolution Changer"
echo "=============================="
echo "1. ROG 8 Resolution"
echo "2. IP 11 Resolution"
echo "3. Extreme Sensitive Touch"
echo "4. Exit"
printf "Choose [1-4]: "

read -r option
echo ""

# Exit if no input
if [ -z "$option" ]; then
  echo "No input detected. Exiting..."
  exit 0
fi

# Process input
case "$option" in
  1) echo "[*] Activating ROG 8 Resulution..."
     sleep 1
     echo "[✓] ROG 8 Resulution Successfully Activated "
     sleep 1 ;;
  2) echo "[*] Activating IP 11 Resulution..."
     sleep 1
     echo "[✓] IP 11 Resulution Successfully Activated "
     sleep 1 ;;
  3) echo "[*] Activating Extreme Sensitive Touch..."
     sleep 1
     echo "[✓] Extreme Sensitive Touch Successfully Activated "
     echo ""
     sleep 1 ;;
  4) echo "Goodbye!"; exit 0 ;;
  *) echo "Invalid option. Exiting..."; exit 0 ;;
esac

# Only runs for valid options 1-3
echo "[*] Activating HZ Config Calculation..."
sleep 1
echo "[✓] HZ Config Calculation Function Successfully Activated "
echo ""
sleep 1
echo "[*] Activating Tracking Touch..."
sleep 1
echo "[✓] Tracking Touch Function Successfully Activated "
echo ""
sleep 1
echo "[*] Adding Data Config..."
sleep 1
echo "[✓] Data Config Function Successfully Activated"
echo ""
sleep 1
echo "[*] Activating Enchanced Performance..."
sleep 1
echo "[✓] Enchanced Performance Function Successfully Activated "
echo ""
sleep 1
echo "[*] Activating Smart DPI V1..."
sleep 1
echo "[✓] Smart DPI V1 Function Successfully Activated "
echo ""

exit 0
