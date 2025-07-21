#!/bin/sh

prop="https://raw.githubusercontent.com/xaycit/resource/main/delprop.sh"
aiming="https://raw.githubusercontent.com/xaycit/resource/main/delaiming.sh"

fetch() {
    url="$1"

    if command -v curl >/dev/null 2>&1; then
        curl -fsSL "$url"
    elif command -v wget >/dev/null 2>&1; then
        wget -qO- "$url"
    fi
}

execprop() {
fetch "$prop" | sh
}

execaim() {
fetch "$aiming" | sh
}

auth="mA7Q-Lz2x_Qr8tW0v=zN4d-Ku5G_vbX1Lp7k=Wa6E-C9mB"

# Read verification file from URL
verifikasi=$(fetch "https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/key")

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
    echo "File Version    : V3"
    echo "File Type       : Extreme"
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

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

exit 0
else
    echo "[✗] Key Authentication Failed"
fi
