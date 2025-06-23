#!/system/bin/sh

# Packages to monitor
PKG1="com.dts.freefireth"
PKG2="com.dts.freefiremax"

# Track current state
STATE="stopped"

while true; do
    # Check if either app is running
    pid1=$(pidof "$PKG1")
    pid2=$(pidof "$PKG2")

    if [ -n "$pid1" ] || [ -n "$pid2" ]; then
        if [ "$STATE" = "stopped" ]; then
            cmd notification post -S bigtext -t 'SMART DPI BY LANZSETTINGS' 'Tag' 'ACTIVE' > /dev/null 2>&1
            wm density 150
            STATE="running"
        fi
    else
        if [ "$STATE" = "running" ]; then
            cmd notification post -S bigtext -t 'SMART DPI BY LANZSETTINGS' 'Tag' 'NON ACTIVE' > /dev/null 2>&1
            wm density reset
            STATE="stopped"
        fi
    fi

    sleep 2
done

exit 0
