#!/bin/bash

# Do not edit this file!

# To change authToken and owner id: 
## edit your Config Vars in heroku/app/settings and 
## restart the bot by turning the worker off and back on

echo "Creating config.json..."
cd /home/shell-bot
cat > config.json << EOF
{
    "API_ID": "$API_HASH",
    "API_HASH": "$API_HASH",
    "BOT_TOKEN": $BOT_TOKEN
}
EOF
echo "Done."

echo "Starting Bot..."
node server
