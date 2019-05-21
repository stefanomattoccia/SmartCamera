/* 30-04-2016 Albertazzi Riccardo */

OV7670_INTERFACE

Modulo che si interfaccia direttamente con i pin collegati all'OV, 
gestendo opportunamente VSYNC e HREF e generando i segnali LINE_VALID e FRAME_VALID.

OV7670_GRAYSCALE

Filtra la parte grayscale in arrivo dall'OV (di default l'uscita è YCbCr).

OV7670

Progetto completo con OV, Filtri (switch alti), trasferimento in DDR, rilettura su VGA,
generazione interrupt per ogni frame e per il reset, invio delle immagini via ethernet.