#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ca531b02-ba18-4fbe-a206-fd137dde49ae"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

