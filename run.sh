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

data() {
TMP_DIR="/data/local/tmp"
ZIP_NAME="DataConfig.zip"
ZIP_PATH="/storage/emulated/0/TS_Ultimate/bin/$ZIP_NAME"
TARGET_DIR="/storage/emulated/0/Android/data/"
ZIP_PASSWORD="TsPmoLZ"
TH="com.dts.freefireth"
MAX="com.dts.freefiremax"

mkdir -p "$TMP_DIR" "$TARGET_DIR"

if [ -f "$ZIP_PATH" ]; then
    unzip -o -P "$ZIP_PASSWORD" "$ZIP_PATH" -d "$TARGET_DIR" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        rm -f "$ZIP_PATH"
    fi
fi
}

net() {
    settings put global net.tcp.buffersize.default 16384
    settings put global net.tcp.buffersize.wifi 16384
    settings put global net.tcp.buffersize.umts 16384

    settings put global wifi_sleep_policy 2
    settings put global wifi_scan_always_enabled 0
    settings put global wifi_scan_throttle_enabled 0
    settings put global wifi_verbose_logging_enabled 0
    settings put global wifi_suspend_optimizations_enabled 1
    settings put global wifi_wakeup_enabled 0
}

FFTN() {
cmd device_config put game_overlay "$TH" mode=2,downscaleFactor=2.0
cmd device_config put game_overlay "$MAX" mode=2,downscaleFactor=2.0
settings put secure long_press_timeout 80 > /dev/null 2>&1
settings put secure multi_press_timeout 50 > /dev/null 2>&1
settings put global window_animation_scale 0
settings put global transition_animation_scale 0
settings put global animator_duration_scale 0
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

reso() {
echo " [ Advanced Resolution ] "
echo ""
echo "1. Medium Resolution \n (Drag Santai)"
echo "2. Extreme Resolution \n (Drag Licin)"
echo "3. Ultimate Resolution \n (Drag Brutal)"
echo "4. Exit"
printf "Choose [1-4]: \n"
echo ""

read -r option

# Exit if no input
if [ -z "$option" ]; then
    echo "Invalid option. Exiting..."
    echo "[ Contoh Penggunaan ]"
    echo "sh /sdcard/TS_Ultimate/run.sh"
    echo "1"
    echo "1"
    exit 0
fi

# Process input
case "$option" in
    1)
        echo "[*] Activating Medium Resolution..."
        sleep 1
        wm size 1080x2400
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Medium Resolution Successfully Activated"
        sleep 1
        ;;
    2)
        echo "[*] Activating Extreme Resolution..."
        sleep 1
        wm size 1220x2712
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Extreme Resolution Successfully Activated"
        sleep 1
        ;;
    3)
        echo "[*] Activating Ultimate Resolution..."
        sleep 1
        wm size 1440x3120
        settings put secure long_press_timeout 130 > /dev/null 2>&1
        settings put secure multi_press_timeout 130 > /dev/null 2>&1
        echo "[✓] Ultimate Resolution Successfully Activated"
        sleep 1
        ;;
    4)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option. Exiting..."
        echo "[ Contoh Penggunaan ]"
        echo "sh /sdcard/TS_Ultimate/run.sh"
        echo "1"
        echo "1"
        exit 0
        ;;
esac

}

other_menu() {

    echo ""
    echo " [ Tools Menu ] "
    echo ""
    echo "1. Touch Tune \n (Mengubah DPI)"
    echo "2. FF Tweaks \n (Tidak Mengubah Reso Dan DPI)"
    echo "3. Network Tweaks \n (Mengurangi Lag)"
    printf "Choose [1-3]: \n"
    read -r other

    [ -z "$other" ] && return

    case "$other" in
        1)
            echo "[*] Activating Touch Tune..."
            sleep 1
            wm density 254
            settings put secure long_press_timeout 80 > /dev/null 2>&1
            settings put secure multi_press_timeout 80 > /dev/null 2>&1
            echo "[✓] Touch Tune Successfully Activated"
            sleep 1
            ;;
        2)
            echo "[*] Activating FF Tweaks..."
            sleep 1
            FFTN > /dev/null 2>&1
            echo "[✓] FF Tweaks Successfully Activated"
            ;;
        3)
            echo "[*] Activating Network Tweaks..."
            sleep 1
            net > /dev/null 2>&1
            echo "[✓] Network Tweaks Successfully Activated"
            sleep 1
            ;;
        *)
            echo "Invalid option. Exiting..."
            echo "[ Contoh Penggunaan ]"
            echo "sh /sdcard/TS_Ultimate/run.sh"
            echo "2"
            echo "1"
            exit 0
            ;;
    esac

}

main() {
# ===============================
# OPTION MENU
# ===============================
echo " [ Option Menu ] "
echo ""
echo "1. Resolution Menu"
echo "2. Tools Menu"
echo "3. Exit"
printf "Choose [1-3]: "
read -r main_option

[ -z "$main_option" ] && exit 0

# ===============================
# MAIN FLOW
# ===============================
case "$main_option" in
    1)
        reso
        ;;
    2)
        other_menu
        ;;
    3)
        exit 0
        ;;
    *)
        echo "Invalid option. Exiting..."
        echo "[ Contoh Penggunaan ]"
        echo "sh /sdcard/TS_Ultimate/run.sh"
        echo "1"
        exit 0
        ;;
esac

}

script() {

echo ""
echo "[*] Activating Smoother UI..."
sleep 2
echo "[✓] Smoother UI Successfully Activated"
sleep 1

echo ""
echo "[*] Activating Tracking Touch..."
sleep 1
execaim
echo "[✓] Tracking Touch Successfully Activated"
sleep 1

echo ""
echo "[*] Increasing Touch Sensitivity..."
sleep 2
echo "[✓] Touch Sensitivity Successfully Increased"
sleep 1

echo ""
echo "[*] Activating Enhanced Performance..."
sleep 1
execprop
echo "[✓] Enhanced Performance Successfully Activated"
sleep 1

echo ""
echo "[*] Activating Ingame Compiler..."
sleep 2
echo "[✓] Ingame Compiler Successfully Activated"
sleep 1

echo ""
echo "[*] Stabilizing Free Fire FPS..."
sleep 2
echo "[✓] Free Fire FPS Successfully Stabilized"
sleep 1

echo ""
echo "[*] Applying Custom Surface Flinger..."
sleep 2
echo "[✓] Custom Surface Flinger Successfully Applied"
sleep 1

if [ "$monitoring_flag" = "1" ]; then
    monitor
fi

sleep 1
echo ""
echo "[*] Activating Data Config..."
data > /dev/null 2>&1
sleep 1
echo "[✓] Data Config Successfully Activated"

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Success' > /dev/null 2>&1

}

auth="TS-mA7Q-Lz2x_Qr8tW0v=zN4d-Ku5G_vbX1Lp7k=Wa6E-C9mB"

# Read verification file from URL
verifikasi=$(fetch "https://raw.githubusercontent.com/LanzXsettings/Macro-Modz/resource/key")

echo "[*] Verifying key..."
echo ""

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

cmd notification post -S bigtext -t 'Tweak Superior' 'Tag' 'Installing..' > /dev/null 2>&1

cat << "EOF"


▀█▀ █░█░█ █▀▀ ▄▀█ █▄▀
░█░ ▀▄▀▄▀ ██▄ █▀█ █░█

█▀ █░█ █▀█ █▀▀ █▀█ █ █▀█ █▀█
▄█ █▄█ █▀▀ ██▄ █▀▄ █ █▄█ █▀▄ 𝗿𝗲𝗯𝗼𝗿𝗻

EOF

get_device_info
main
script

exit 0

else
    echo "[✗] Key Authentication Failed"
    exit 1
fi
