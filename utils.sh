#!/bin/bash

extract_lines_from_section() {
    local ini_path="$1"
    local section_key="$2"
    local items=()
    
    if [ ! -f "$ini_path" ]; then
        return 1
    fi

    local in_section=0

    while IFS= read -r line; do
        if [[ "$line" == "[$section_key]" ]]; then
            in_section=1
            continue
        fi

        if [[ "$line" =~ ^\[(.*)\]$ ]]; then
            in_section=0
        fi

        if [ $in_section -eq 1 ] && [ -n "$line" ]; then
            items+=("$line")
        fi
    done < "$ini_path"

    echo "${items[@]}"
}

get_ini_value() {
    local ini_path="$1"
    local key="$2"
    
    local value=$(grep "^$key=" "$ini_path" | cut -d'=' -f2-)
    
    value=$(echo "$value" | xargs)
    
    echo "$value"
}
