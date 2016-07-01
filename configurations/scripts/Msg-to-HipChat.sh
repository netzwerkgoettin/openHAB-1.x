#!/bin/bash
## $HOME/openhab/configurations/scripts/Msg-to-HipChat.sh / 20160701
## Marianne Spiller <github@spiller.me>
## openhab-1.8.2-STABLE

ROOM_ID="..."
AUTH_TOKEN="..."
COLOR="$1"
HIPCHATMSG="$2"
PUSHMSG="false"

Usage() {
  echo "Kommunikationsscript für OpenHAB"
}

curl -H "Content-Type: application/json" \
     -X POST \
     -d "{\"color\": \"$COLOR\", \"notify\": \"$PUSHMSG\", \"message_format\": \"text\", \"message\": \"$HIPCHATMSG\" }" \
     https://api.hipchat.com/v2/room/$ROOM_ID/notification?auth_token=$AUTH_TOKEN
