#! /usr/bin/env bash

## Use Xresources to configure Xautolock
xrdb -load $HOME/.Xresources
xautolock -secure &

gpg-agent --daemon --write-env-file $HOME/.gnupg/.gpg-agent-info
[[ ! `pgrep mpd` ]] && mpd &
[[ ! `pgrep redshift` ]] && redshift &

urxvt256c -e tmux &
nm-applet &
xcompmgr &
