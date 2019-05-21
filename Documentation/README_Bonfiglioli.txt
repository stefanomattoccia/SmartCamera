----------------------------------------------------------------
				Bonfiglioli Luca 02/10/2017
			Luca.Bonfiglioli10@studio.unibo.it
----------------------------------------------------------------

Aggiunte e Modifiche:
-	Filtro di convoluzione configurabile, progetto HLS
-	Hierarchy "convolution_filter" nel diagramma a blocchi
	(contenente anche il filtro di convoluzione separabile realizzato da Rossini)
	Relativo mapping degli indirizzi
-	Modulo "convolution_filter" su Vivado SDK
-	Modulo "tcp_connect" su Vivado SDK
-	Modifiche minori a "platform_config" su Vivado SDK
-	Client TCP (Progetto CodeBlocks)

Il codice è commentato e trattato estensivamente all'itnerno della tesi:
"Progetto_Vivado/Manuali_e_tesi/Tesi_Bonfiglioli_Luca.pdf".
Sono disponibile per informazioni e chiarimenti all'indirizzo email specificato 
nel titolo.

ISTRUZIONI

- 	Estrarre l'archivio in una cartella qualsiasi

- 	Seguire le istruzioni per il setup di MinGW e OpenCV nella cartella 
	"Progetto_Vivado/Manuali_e_tesi"

- 	Aprire il progetto Vivado in "Progetto_Vivado/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.xpr"

-	Controllare che le repository siano importate correttamente dai seguenti path:
	"Progetto_Vivado/HLS_COMMON"
	"Progetto_Vivado/Ov7670_Color/VIVADO_HLS"

-	È consigliabile eseguire una nuova sintesi: synthesis > implementation > generate bitstream

-	Dopo la sintesi esportare l'hardware sintetizzato includendo il bitstream

-	Avviare Vivado SDK

-	È consigliabile effettuare una clean build del progetto e del BSP

- 	Collegare i cavi: 
	cavo USB per la programmazione della FPGA 
	cavo USB per l'output di debug sulla console di SDK
	cavo ethernet
	cavo VGA per l'output su schermo
	alimentazione zedboard
	sensore Ov7670
	SD card
	
-	Accendere la ZedBoard
	
-	Connettersi alla COM utilizzata per il debug e avviare l'applicazione

- 	Avviare uno dei due client UDP:
	"Progetto_Vivado/OV7670_Color/client_udp/bin"
	"Progetto_Vivado/OV7670_Color/client_udp_boscarino/bin"
	Vedi "Problematiche" in caso di problemi
	
-	Avviare il client TCP:
	"Progetto_Vivado/OV7670_Color/client_tcp/Client/bin/Debug/Client.exe
	Vedi "Problematiche" in caso di problemi
	
PROBLEMATICHE

-	Utilizzo eccessivo di BRAM nel filtro di convoluzione configurabile
	a causa di un bug che impedisce l'utilizzo di una direttiva

-	È possibile che SDK crei nuovi "hardware_platform_xx" in seguito all'esportazione
	del diagramma a blocchi. Ciò è causato da una cattiva gestione delle dipendenze
	tra i progetti di Vivado SDK.

-	Evitare l'utilizzo di GIT in quanto SDK potrebbe avere problemi.

-	È possibile che Vivado SDK fallisca nel rigenerare il BSP a partire dall'hardware.
	In tal caso un reboot dovrebbe risolvere il problema.
	
-	Al primo avvio l'applicazione potrebbe mostrare un'immagine distorta, con colori 
	sfalsati. Riavviare l'applicazione.

-	Gestione delle inclusioni da rivedere su Vivado SDK

-	Il client UDP è presente in due versioni, ci sono problemi di compatibilità. Nel
	caso mio (Bonfiglioli) il client che funzionava si trova in:
	"Progetto_Vivado/OV7670_Color/client_udp_boscarino/bin/Debug/TestOpencv.exe"
	Su altre macchine tale client non risulta funzionare, come riportato dal professor
	Mattoccia, Bertoli e Mingozzi. Provare le alternative, in caso di fallimento, 
	tentare il rebuild del progetto.
	
-	Alcune versioni di Windows 10 resettano la tabella di routing, ad ogni
	accensione della macchina e/o della ZedBoard, è necessario:
	Aprire un terminale come amministratore e inserire
	"route DELETE 192.168.1.0" 
	"route PRINT"
	verificare che non siano presenti entry corrispondenti a 192.168.1.0
	Trovare (in alto) l'id dell'interfaccia di rete da utilizzare (ethernet)
	tale numero dovrà essere sostituito ad "X" nel prossimo comando
	"route ADD 192.168.1.0 MASK 255.255.255.0 0.0.0.0 IF X"
	"route PRINT" per verificare
	
	È consigliabile creare uno script per effettuare in automatico tali operazioni.