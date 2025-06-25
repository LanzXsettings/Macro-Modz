#!/bin/sh

prop="https://raw.githubusercontent.com/xaycit/resource/main/delprop.sh"
aiming="https://raw.githubusercontent.com/xaycit/resource/main/delaiming.sh"

execprop() {
sh -c "$(curl -fsSL "$prop")"
}

execaim() {
sh -c "$(curl -fsSL "$aiming")"
}

auth="mA7Q-Lz2x_Qr8tW0v=zN4d-Ku5G_vbX1Lp7k=Wa6E-C9mB"

# Read verification file from URL
verifikasi=$(curl -fsSL "https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/key")

echo "[*] Verifying key..."
echo ""

# Compare values using POSIX syntax
if [ "$auth" = "$verifikasi" ]; then

key() {
sleep 3
echo "[✓] Key Authentication Successful"
echo ""
echo "[!] Please Wait Uninstalling Script"
sleep 2
}

key

sdpi() {

SCRIPT_URL="https://raw.githubusercontent.com/xaycit/resource/main/delexsdpi.sh"

sh -c "$(curl -fsSL "$SCRIPT_URL")"

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
    echo "File Type       : Ultimate"
    echo ""
}

get_device_info

echo "[*] Resetting Menu Options..."
wm size reset
sleep 1
echo "[✓] Menu Options Successfully Resetted"
sleep 1
echo ""
echo "[*] Deactivating Tracking Touch..."
execaim
sleep 1
echo "[✓] Tracking Touch Successfully Deactivated"
sleep 1
echo ""
echo "[*] Deactivating Enhanced Performance..."
execprop
sleep 1
echo "[✓] Enhanced Performance Successfully Deactivated"
sleep 1
echo ""
echo "[*] Deactivating Smart DPI V1..."
sdpi
sleep 1
echo ""
echo "[✓] Smart DPI V1 Successfully Deactivated"

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

exit 0
else
    echo "[✗] Key Authentication Failed"
fi
