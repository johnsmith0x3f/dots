#!/usr/bin/env bash

killall polybar

polybar -c ~/.dots/polybar/themes/$1/config.ini &
