#!/usr/bin/env bash

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do
        IFS=$'\t' read -ra tags <<< "$(herbstclient tag_status)"
        {
            for i in "${tags[@]}" ; do
                case ${i:0:1} in
                    '#')
                            # Focus
			    echo "%{F#f1f1f1}%{B#232328} "
                        ;;
                    ':')
                            # Not empty
			    echo "%{F#f1f1f1} "
                        ;;
                    '!')
                            # Urgent
			    echo "%{F#f1f1f1} "
                        ;;
                    '-')
                            # Focus on another monitor
			    echo "%{F#f1f1f1} "
                        ;;
                    *)
                        # Empty
                        echo "%{F#f1f1f1} "
                        ;;
                esac

                echo " ${i:1} %{A -u -o F- B-}"
            done

        } | tr -d "\n"

    echo

    read -r || break
done
} 2>/dev/null
