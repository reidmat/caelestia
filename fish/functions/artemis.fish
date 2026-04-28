function artemis --description 'Animated moon orbiting a planet. Usage: artemis [rotations] [delay]. rotations=0 loops forever (Ctrl+C to stop).'
    set -l rotations $argv[1]
    set -l delay $argv[2]
    test -z "$rotations"; and set rotations 4
    test -z "$delay"; and set delay 0.18

    for j in (seq 1 7); echo; end

    set -l i 0
    while true
        if test "$rotations" -gt 0; and test $i -ge (math "8 * $rotations")
            break
        end
        set i (math $i + 1)
        tput cuu 7
        set -l frame (math "$i % 8")
        switch $frame
            case 0
                echo '       .   ●   .       '
                echo '   .                 . '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   .   .       '
            case 1
                echo '       .   .   .       '
                echo '   .                 ● '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   .   .       '
            case 2
                echo '       .   .   .       '
                echo '   .                 . '
                echo ' .                    ●'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   .   .       '
            case 3
                echo '       .   .   .       '
                echo '   .                 . '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 ● '
                echo '       .   .   .       '
            case 4
                echo '       .   .   .       '
                echo '   .                 . '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   ●   .       '
            case 5
                echo '       .   .   .       '
                echo '   .                 . '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   ●                 . '
                echo '       .   .   .       '
            case 6
                echo '       .   .   .       '
                echo '   .                 . '
                echo ' ●                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   .   .       '
            case 7
                echo '       .   .   .       '
                echo '   ●                 . '
                echo ' .                    .'
                echo '          ◯           '
                echo ' .                    .'
                echo '   .                 . '
                echo '       .   .   .       '
        end
        sleep $delay
    end
end
