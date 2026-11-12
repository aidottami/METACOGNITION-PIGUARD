# METACOGNITION-PIGUARD

Un documento può dare istruzioni al sistema che lo riassume. Può anche *citare* quelle stesse istruzioni in un manuale di sicurezza. Per distinguerli, PIGUARD studia chi parla, a chi si rivolge e quale effetto avrebbe la richiesta. A volte la definizione di una procedura e la richiesta di applicarla si trovano a molte pagine di distanza.

La pipeline raccoglie evidenze complementari e conserva il collegamento con la pagina di origine. Un detector può segnalare un passaggio, mentre un secondo lettore ne interpreta il contesto. Un esito **incerto** indica che il giudice lascia aperta l’interpretazione. Una lettura incompleta indica invece un limite di copertura. Entrambi devono essere visibili a chi usa il risultato.

## Prova su CPU

Dalla radice del repository eseguire con Bash e jq 1.6 o successivo:

```sh
bash examples/cross-page/test.sh
```

La prova usa due documenti sintetici rappresentati come estratti di pagina in JSON. Controlla citazioni corrette, una frase inventata e un’attribuzione alla pagina sbagliata. Il verificatore misura la provenienza letterale. L’interpretazione della coppia è fornita come esempio e non viene calcolata da un modello durante la demo.

[Architettura e stato dei componenti](docs/architecture.md) · [Esperimento sui richiami tra pagine](docs/experiments/cross-page.md) · [Journal di ricerca PI-COGNITION](https://github.com/aidottami/PI-COGNITION)

## Licenza

Il codice, la documentazione e gli esempi originali di questa distribuzione sono rilasciati sotto [Apache License 2.0](LICENSE).
