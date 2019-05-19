#!/bin/sh

if [ -z "${LFA_CANTOOKSTATION_AUTH_TOKEN}" ]
then
  echo "offline.auth.sh: LFA_CANTOOKSTATION_AUTH_TOKEN environment variable undefined" 1>&2
  exit 1
fi

cat <<EOF
# Open access books actually require that no credentials be presented
http[s]?://lfa\.cantookstation\.com/media/.*/download  none

# Otherwise, feeds and images require auth, but no other domains do
http[s]?://lfa\.cantookstation\.com(/.*)?  basic:lfa_app:${LFA_CANTOOKSTATION_AUTH_TOKEN}
EOF
