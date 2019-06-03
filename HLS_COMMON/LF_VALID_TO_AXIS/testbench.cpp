#include "LF_valid_to_AXIS.h"
#include "stdio.h"

int main()
{
	hls::stream<byte> outputStream;

	byte A = 0xAA;
	byte B = 0xBB;
	byte C = 0xCC;
	byte D = 0xDD;
	byte E = 0xEE;

	bool one = true;
	bool zero = false;

	/*
	 * Input che deve essere ignorato al reset
	 */
	LF_valid_to_AXIS(&A, &one, &one, outputStream);
	LF_valid_to_AXIS(&B, &one, &one, outputStream);
	LF_valid_to_AXIS(&C, &one, &one, outputStream);
	LF_valid_to_AXIS(&D, &one, &one, outputStream);
	LF_valid_to_AXIS(&E, &one, &one, outputStream);

	/*
	 * Line valid va a zero
	 */
	LF_valid_to_AXIS(&E, &one, &zero, outputStream);

	/*
	 * Frame valid va a zero
	 */
	LF_valid_to_AXIS(&E, &zero, &zero, outputStream);

	/*
	 * Frame valid torna a uno
	 */
	LF_valid_to_AXIS(&E, &one, &zero, outputStream);

	/*
	 * Ora deve campionare
	 */
	LF_valid_to_AXIS(&A, &one, &one, outputStream);
	LF_valid_to_AXIS(&B, &one, &one, outputStream);
	LF_valid_to_AXIS(&C, &one, &one, outputStream);
	LF_valid_to_AXIS(&D, &one, &one, outputStream);
	LF_valid_to_AXIS(&E, &one, &one, outputStream);

	/*
	 * Line valid torna a zero
	 */
	LF_valid_to_AXIS(&E, &one, &zero, outputStream);


	int letti = outputStream.size();
	printf("byte letti = %d\n", letti);

	for(int i = 0; i < letti; i++)
		outputStream.read();



	return 0;
}
