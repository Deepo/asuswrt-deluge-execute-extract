#!/bin/sh

torrentid=$1
torrentname=$2
torrentpath=$3

log()
{
    logger -t deluge-extractarchives "$@"
}

log "Torrent complete: $@"
cd "${torrentpath}"/"${torrentname}"
log "Working directory: $PWD" 

if ls *.rar
then
    log "Extracting RAR"
    unrar -o- e *.rar
    log "Extraction complete"
fi

if ls *.zip
then
    log "Extracting ZIP"
    unzip -o *.zip
    log "Extraction complete"
fi
