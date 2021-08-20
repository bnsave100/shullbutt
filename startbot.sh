#!/bin/bash

# Do not edit this file!

# To change authToken and owner id: 
## edit your Config Vars in heroku/app/settings and 
## restart the bot by turning the worker off and back on

echo "Creating requirements.txt..."
cd /home/wiguna-cermin
cat > requirements.txt << EOF
{
aiohttp
anytree
aria2p
appdirs
beautifulsoup4
cloudscrape
feedparser
gitpython
google-api-python-client
google-auth-httplib2
google-auth-oauthlib
gunicorn
heroku3
js2py
lk21
lxml
psutil
psycopg2-binary
pybase64
pyrogram
python-dotenv
python-magic
python-telegram-bot
qbittorrent-api
requests
speedtest-cli
telegraph
tenacity
TgCrypto
torrentool
urllib3
youtube_dl
}
EOF
echo "Done."

echo "Starting Bot..."
python3 -m bot
