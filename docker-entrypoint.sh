
#!/bin/sh
set -e

if [ $(echo "$1" | cut -c1) = "-" ]; then
  echo "$0: assuming arguments for viacoind"

  set -- viacoind "$@"
fi

if [ $(echo "$1" | cut -c1) = "-" ] || [ "$1" = "viacoind" ]; then
  mkdir -p "$VIACOIN_DATA"
  chmod 700 "$VIACOIN_DATA"
  chown -R viacoin "$VIACOIN_DATA"

  echo "$0: setting data directory to $VIACOIN_DATA"

  set -- "$@" -datadir="$VIACOIN_DATA"
fi

if [ "$1" = "viacoind" ] || [ "$1" = "viacoin-cli" ] || [ "$1" = "viacoin-tx" ]; then
  echo
  exec gosu viacoin "$@"
fi

echo
exec "$@"