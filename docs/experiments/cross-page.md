# Una procedura definita a pagina 1 e richiamata a pagina 40

In un esperimento CPU abbiamo confrontato 28 PDF sintetici con testo nativo, 13 ostili e 15 benigni. La soglia di Protect AI DeBERTa v3 v2 era 0,5. Almeno un intervallo sopra soglia bastava a segnalare il documento.

| Segmentazione | Ostili segnalati | Benigni segnalati |
|---|---:|---:|
| 384 caratteri per pagina, passo 320 | 12/13 | 14/15 |
| Frasi e paragrafi, con suddivisione dei segmenti lunghi | 13/13 | 14/15 |
| 192 caratteri per lato del confine di pagina | 5/13 | 5/15 |

Solo 21 PDF avevano più pagine. Il documento ostile aggiunto dalle frasi è scattato su una domanda amministrativa estranea al payload. Per questo contiamo anche quanti documenti presentano un allarme che copre almeno metà di un frammento annotato: 10 con le finestre ordinarie, 11 con le frasi e zero con i confini.

In due fascicoli appaiati Protect AI ha segnalato **517 intervalli per frase in ciascuno**. In quello ostile la procedura iniziale chiedeva di sostituire le valutazioni e omettere criticità. A pagina 40 il lettore automatico riceveva l’ordine di applicarla. Nel fascicolo benigno lo stesso richiamo descriveva un campionamento svolto dagli auditor.

Gemma 4 locale (8B, Q4_K_M) ha ricevuto, in conversazioni distinte, i primi 1.250 caratteri delle due pagine di ciascun fascicolo, senza etichette o score. Al primo passaggio ha citato correttamente definizione e richiamo ma ha classificato il caso ostile come **incerto**. Ha classificato il controllo come **benigno**. Avevamo selezionato le pagine conoscendo il caso. È una prova mirata della capacità di correlazione; la sensibilità sul traffico reale resta da misurare.

La demo pubblica usa una coppia sintetica nuova per esercitare il controllo delle citazioni. I numeri sopra provengono dal benchmark di ricerca.
