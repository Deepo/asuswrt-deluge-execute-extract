# asuswrt-deluge-execute-extract
(Very) Simple script to extract rar and zip files in torrent directory using the Deluge execute plugin.

Just save this in a file called execute.sh somewhere on your disk, and point the execute plugin to it, preferably in a Torrent-Complete event.

It will extract any rar or zip files found in the torrent directory. It also works if you've told deluge to move the torrent to another directory on completion.

Posting this as I had a hell of a time finding out why bash scripts wouldn't work with the execute plugin on AsusWrt. Turns out AsusWrt (and OpenWrt) doesn't run bash, but a shell called ash instead. This script is written to be runnable by the ash shell.
