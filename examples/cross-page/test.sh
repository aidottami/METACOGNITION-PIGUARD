#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

for documento in audit.json istruzione.json; do
  jq -f verify.jq "$documento" | jq -e 'select(.valido == true and (.controlli | length) == 2)'
done

jq '.evidenze[0].citazione = "La verifica si è svolta sulla Luna."' audit.json |
  jq -f verify.jq |
  jq -e 'select(.valido == false and .controlli[0].pagine_con_riscontro == [])'

jq '.evidenze[0].pagina = 19' istruzione.json |
  jq -f verify.jq |
  jq -e 'select(.valido == false and .controlli[0].pagine_con_riscontro == [2])'
