/* 02/05/2016 Albertazzi Riccardo */

DDR

	AXIS_TO_DDR_WRITER
	Modulo che prende in ingresso un flusso di immagini axi-stream e lo salva via axi-master in appositi frame buffer.
	Nella versione AXILITE è possibile impostare tutti i parametri da ARM tramite i driver autogenerati, nell'altra
	versione i valori sono cablati una volta effettuata la sintesi.

	DDR_TO_AXIS_READER
	Modulo che legge dai frame buffer via axi-master le immagini e le rimette in uscita via axi-stream.
	Nella versione AXILITE è possibile impostare tutti i parametri da ARM tramite i driver autogenerati, nell'altra
	versione i valori sono cablati una volta effettuata la sintesi.

LF_VALID_TO_AXIS

	Modulo completamente general purpose, prende in ingresso i segnali LINE_VALID, FRAME_VALID e DATA
	e restituisce in uscita un axi-stream. Gestisce opportunamente il reset e l'auto-allineamento al
	momento dell'inizializzazione.

PATTERN_GENERATORS
	
	PATTERN_GENERATOR_CROSS
	Modulo axi-stream che produce una croce bianca su sfondo nero che rimbalza sullo schermo.

VGA

	AXI_STREAM_TO_VGA
	Modulo per la visualizzazione di un flusso di immagini axi_stream su VGA.
	Se il flusso in ingresso è vuoto disegna un intero frame di colore rosso.

	AXI_STREAM_TO_VGA_RED_255
	Identico alla versione sopra, con la differenza che il valore 255 in ingresso viene
	visualizzato come rosso. Usato per evidenziare caratteristiche all'interno di un frame.