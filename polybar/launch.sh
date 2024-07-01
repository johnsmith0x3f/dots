#!/usr/bin/env bash

polybar left -c ~/.dots/polybar/config.ini &
polybar right -c ~/.dots/polybar/config.ini &
polybar middle -c ~/.dots/polybar/config.ini &
polybar tray -c ~/.dots/polybar/config.ini &
polybar xwindow -c ~/.dots/polybar/config.ini
