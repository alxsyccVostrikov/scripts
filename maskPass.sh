password=""
character=""
prompt="Password: "
echo -n "${prompt}" >&2
while true; do
    read -N 1 -s character
    [ "${character}" == $'\n' ] && break
    echo -n "*" >&2
    password="${password}${character}"
done
echo >&2
