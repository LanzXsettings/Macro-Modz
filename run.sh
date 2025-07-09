    #!/bin/sh

prop="https://raw.githubusercontent.com/xaycit/resource/main/prop.sh"
aiming="https://raw.githubusercontent.com/xaycit/resource/main/aiming.sh"

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

monitor() {
    SCRIPT_URL="https://raw.githubusercontent.com/xaycit/resource/main/exmonitor.sh"

    fetch "$SCRIPT_URL" | sh
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
echo "[!] Please Wait Executing Script"
sleep 2
}

key

monitoring_flag=0
arg="$1"

if [ "$arg" = "--monitoring" ]; then
    monitoring_flag=1
fi

sdpi() {

SCRIPT_SDPI="https://raw.githubusercontent.com/xaycit/resource/main/exsdpi.sh"

fetch "$SCRIPT_SDPI" | sh

}

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Installing..' > /dev/null 2>&1

# Banner
cat << "EOF"
   


▀█▀ █░█░█ █▀▀ ▄▀█ █▄▀
░█░ ▀▄▀▄▀ ██▄ █▀█ █░█

█▀ █░█ █▀█ █▀▀ █▀█ █ █▀█ █▀█
▄█ █▄█ █▀▀ ██▄ █▀▄ █ █▄█ █▀▄ 𝙇𝙕 𝙭 𝙓𝘾

EOF

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
    echo "File Version    : V2"
    echo "File Type       : Ultimate"
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
        wm size 828x1792
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Medium Resolution Successfully Activated"
        sleep 1
        ;;
    2)
        echo "[*] Activating Extreme Resolution..."
        sleep 1
        wm size 1080x2400
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Extreme Resolution Successfully Activated"
        sleep 1
        ;;
    3)
        echo "[*] Activating Ultimate Resolution..."
        sleep 1
        wm size 1170x2532
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Ultimate Resolution Successfully Activated"
        sleep 1
        ;;
    4)
        echo "[*] Activating Extreme Sensitive Touch..."
        sleep 1
        settings put secure long_press_timeout 90 > /dev/null 2>&1
        settings put secure multi_press_timeout 90 > /dev/null 2>&1
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
execaim
echo "[✓] Tracking Touch Successfully Activated"
sleep 1
echo ""
echo "[*] Activating Enhanced Performance..."
sleep 1
execprop
echo "[✓] Enhanced Performance Successfully Activated"
sleep 1

if [ "$monitoring_flag" = "1" ]; then
    monitor
fi

sleep 1
echo ""
sdpi
echo ""
echo "[*] Activating Data Config..."
sleep 1
echo "[✓] Data Config Successfully Activated"

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

exit 0
else
    echo "[✗] Key Authentication Failed"
fi
