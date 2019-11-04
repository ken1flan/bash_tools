function generate_key () {
  chars=${1:-32}
  LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c $chars
  echo
}
