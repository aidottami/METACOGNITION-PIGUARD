# Input: estratti di pagina e citazioni riferite allo stesso documento.
def numero_pagina: type == "number" and . > 0 and floor == .;
def testo: type == "string" and test("\\S");

if (.pagine | type != "array" or length == 0) or
   (.evidenze | type != "array" or length == 0) or
   any(.pagine[]; (.pagina | numero_pagina | not) or (.testo | testo | not)) or
   any(.evidenze[]; (.pagina | numero_pagina | not) or (.citazione | testo | not)) or
   ((.pagine | map(.pagina) | unique | length) != (.pagine | length))
then error("Pagine o evidenze mancanti, duplicate o malformate")
else
  .pagine as $pagine |
  [.evidenze[] as $e |
    [$pagine[] | select(.testo | contains($e.citazione)) | .pagina] as $trovate |
    {pagina: $e.pagina, citazione: $e.citazione, pagine_con_riscontro: $trovate,
     valida: ($trovate | index($e.pagina) != null)}] |
  {valido: all(.[]; .valida), controlli: .}
end
