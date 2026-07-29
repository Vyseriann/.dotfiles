#!/bin/bash

# 1. Extract current mute status ("yes" if muted, or "[MUTED]")
IS_MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o '\[MUTED\]')

# 2. Synchronize hardware LED (Replace 'platform::audiomute' with your actual LED name)
if [ -n "$IS_MUTED" ]; then
  brightnessctl -d "platform::mute" set 1
else
  brightnessctl -d "platform::mute" set 0
fi
