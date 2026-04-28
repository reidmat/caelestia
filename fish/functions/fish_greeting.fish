function fish_greeting
    echo -ne '\x1b[38;5;16m'  # Set colour to primary
    echo '   ██   █████ ███████ ██████ █▒  ▒█ █████   ▓███▒'
    echo '  ▒██▒  █    █   █    █      ██░░██   █    █     '
    echo '  ▓▒▒▓  █   ▒█   █    █      █▒▓▓▒█   █    █▓░   '
    echo '  █░░█  █████    █    ██████ █ ██ █   █     ▓██▓ '
    echo '  █  █  █  ░█▒   █    █      █ █▓ █   █        ▓█'
    echo ' ▒████▒ █   ░█   █    █      █    █   █         █'
    echo ' █░  ░█ █    ▒   █    ██████ █    █ █████  ▒████░'
    set_color normal
    echo
    if test -r ~/.local/share/artemis/earth-pixels.png; and command -q chafa
        chafa -f symbols --symbols=vhalf --size=50x22 ~/.local/share/artemis/earth-pixels.png
    end
    fastfetch --key-padding-left 5
end
