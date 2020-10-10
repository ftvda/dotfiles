#!/bin/bash
brightness=$(xbacklight -get )
[ -n "$brightness" ] && printf '☀ %.0f\n' $brightness

