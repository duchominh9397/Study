#!/bin/bash

practices=(practices1 practices2 practices3 practices4 practices5 practices6 \
           practices7 practices8 practices9 practices10 practices11 practices12)

echo "Please select a practice script to run:"
for i in "${!practices[@]}"; do
    printf "%2d - %s\n" "$((i+1))" "${practices[$i]}"
done
echo ""

read -p "Enter the practice number: " number

if [[ "$number" =~ ^[0-9]+$ ]]; then
    if (( number >= 1 && number <= ${#practices[@]} )); then
        script="./${practices[$((number - 1))]}.sh"
        if [[ -x "$script" ]]; then
            read -p "Enter arguments (if any): " args
            echo "Running $script $args"
            "$script" $args
        else
            echo "❌ Script not found or not executable: $script"
        fi
    else
        echo "❌ Invalid selection: $number (out of range)"
    fi
else
    echo "⚠️  Please enter a valid number!"
fi
