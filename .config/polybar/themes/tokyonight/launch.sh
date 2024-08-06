#!/usr/bin/env bash

dir="${0%/*}"

polybar -c "$dir/config.ini" mbar
polybar -c "$dir/config.ini" rbar
