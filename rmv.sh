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

tune() {
density=$(wm density | awk '/Override/ {print $3}')

if [ "$density" = "254" ]; then
    wm density reset
fi
}

execprop() {
fetch "$prop" | sh
}

execaim() {
fetch "$aiming" | sh
}

auth="TS-mA7Q-Lz2x_Qr8tW0v=zN4d-Ku5G_vbX1Lp7k=Wa6E-C9mB"

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

sdpi() {

SCRIPT_URL="https://raw.githubusercontent.com/xaycit/resource/main/delexsdpi.sh"
monitoring="https://raw.githubusercontent.com/xaycit/resource/main/delexmonitor.sh"

fetch "$SCRIPT_URL" | sh
fetch "$monitoring" | sh
}

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Uninstalling..' > /dev/null 2>&1

# Banner
cat << "EOF"
   


▀█▀ █░█░█ █▀▀ ▄▀█ █▄▀
░█░ ▀▄▀▄▀ ██▄ █▀█ █░█

█▀ █░█ █▀█ █▀▀ █▀█ █ █▀█ █▀█
▄█ █▄█ █▀▀ ██▄ █▀▄ █ █▄█ █▀▄ 𝗿𝗲𝗯𝗼𝗿𝗻

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
    echo "File Version    : V2"
    echo "File Type       : Ultimate"
    echo ""
}

get_device_info

echo ""
echo "[*] Resetting Menu Options..."
sleep 1
wm size reset
tune
echo "[✓] Menu Options Successfully Reset"
sleep 1

echo ""
echo "[*] Disabling Smoother UI..."
sleep 2
echo "[✓] Smoother UI Successfully Disabled"
sleep 1

echo ""
echo "[*] Deactivating Tracking Touch..."
sleep 1
execaim
echo "[✓] Tracking Touch Successfully Deactivated"
sleep 1

echo ""
echo "[*] Restoring Touch Sensitivity..."
sleep 2
echo "[✓] Touch Sensitivity Successfully Restored"
sleep 1

echo ""
echo "[*] Deactivating Enhanced Performance..."
sleep 1
execprop
echo "[✓] Enhanced Performance Successfully Deactivated"
sleep 1

echo ""
echo "[*] Resetting Free Fire FPS Stabilizer..."
sleep 1
echo "[✓] Free Fire FPS Successfully Reset"
sleep 1

echo ""
echo "[*] Reverting Custom Surface Flinger..."
sleep 2
echo "[✓] Custom Surface Flinger Successfully Reverted"
sleep 1

echo ""
echo "[*] Deactivating Compiler..."
sleep 1
sdpi
echo "[✓] Compiler Successfully Deactivated"
sleep 1

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

exit 0
else
    echo "[✗] Key Authentication Failed"
fi
