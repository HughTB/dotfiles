#!/bin/sh

playerctl metadata --format '{ "title": "{{title}}", "album": "{{album}}", "artist": "{{artist}}" }'
exit 0
