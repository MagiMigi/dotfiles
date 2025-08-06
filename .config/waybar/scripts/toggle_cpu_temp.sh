
#!/bin/bash

STATE_FILE="/tmp/waybar_temp_toggle"

if [ "$1" == "toggle" ]; then
    if [[ "$(cat $STATE_FILE 2>/dev/null)" == "usage" ]]; then
        echo "temp" > "$STATE_FILE"
    else
        echo "usage" > "$STATE_FILE"
    fi
    exit 0
fi

MODE=$(cat "$STATE_FILE" 2>/dev/null)

if [ "$MODE" == "usage" ]; then
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    printf "<span color='#FF9F0A'> </span>%.0f%%\n" "$CPU"
else
    TEMP=$(sensors | grep 'temp1:' | head -n 1 | awk '{gsub(/[+°C]/, "", $2); printf("%.0f", $2)}')

    printf "<span color='#ff5555'>\u2009</span>%s°C\n" "$TEMP"
fi

