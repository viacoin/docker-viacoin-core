# docker-viacoin-core
Docker image that runs the Viacoind node in a container for easy deployment

### Use

```❯ docker run --rm uphold/litecoin-core \
  -printtoconsole \
  -rpcallowip=127.0.0.1 \
  -server=1 \
  -daemon=1 \
  -txindex=1 \
  -rpcpassword=viarpc \
  -rpcuser=viapass```

  <p>By default, viacoind will run as user viacoin for security reasons & with its default data dir (~/.viacoin).</p>