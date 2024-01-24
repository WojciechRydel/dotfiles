#!/bin/bash
icon="/usr/share/icons/Papirus/32x32/apps/update-notifier.svg"

text="✔️♻️"
readarray -t updates <<< "$(paru -Qu)"
updates_count="${#updates[@]}"
tooltip=""

if [ -n "${updates_count}" ]; then

  text="ℹ️♻️ (${updates_count})"
  tooltip=$(printf '%s\\n' "${updates[*]}")
fi

echo "{\"text\": \"${text}\", \"tooltip\": \"${tooltip}\", \"class\": \"custom-module\", \"icon\": \"${icon}\"}"
