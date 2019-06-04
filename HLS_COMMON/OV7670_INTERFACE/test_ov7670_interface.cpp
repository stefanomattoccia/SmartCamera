#include "ov7670_interface.h"

#define N_CLK 40
#define START 22

int main()
{
	bool first_time = true;

	byte data_in = 1;
	bit vsync, href;

	byte data_out;
	bit line_valid = 0, frame_valid = 0;

	bit array_v[N_CLK] = {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1};
	bit array_h[N_CLK] = {0,0,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0};
	bit array_fv[N_CLK];
	bit array_lv[N_CLK];

	int index = START;

	for (int pclk = 0; pclk < N_CLK; pclk++)
	{
		vsync = array_v[index];
		href = array_h[index];

		ov7670_interface(data_in, href, vsync, &data_out, &line_valid, &frame_valid);

		array_fv[index] = frame_valid;
		array_lv[index] = line_valid;

		index = (index+1) % N_CLK;
	}

	// Print
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < N_CLK; j++)
		{
			switch (i)
			{
				case 0:
					if (first_time)
					{
						cout << "vsync\t\t";
						first_time = false;
					}
					cout << array_v[index];
					break;
				case 1:
					if (first_time)
					{
						cout << "href\t\t";
						first_time = false;
					}
					cout << array_h[index];
					break;
				case 2:
					if (first_time)
					{
						cout << "frame_valid\t";
						first_time = false;
					}
					cout << array_fv[index];
					break;
				case 3:
					if (first_time)
					{
						cout << "line_valid\t";
						first_time = false;
					}
					cout << array_lv[index];
					break;
			}
			index = (index+1) % N_CLK;
		}
		first_time = true;
		cout << "\n";
	}

	cout << "\n\n********** Fine simulazione **********\n\n";

	return 0;
}
