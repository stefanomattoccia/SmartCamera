#include "Testbench_avg_sep.h"

int main(void)
{

	s_int kernel_h[KERNEL_HEIGHT] = { 1,2,1 };
	s_int kernel_v[KERNEL_HEIGHT] = { 1,2,1 };
	s_int sum = 16;
	s_int off = 0;

	pixel window_1[KERNEL_HEIGHT] = { 1,4,1 };
	pixel window_2[KERNEL_HEIGHT] = { 4,7,8 };
	pixel window_3[KERNEL_HEIGHT] = { 0,6,2 };

	int res = (int)pixel_weighted_average_separable(kernel_h, kernel_v, sum, off, window_1);
	res = (int)pixel_weighted_average_separable(kernel_h, kernel_v, sum, off, window_2);
	res = (int)pixel_weighted_average_separable(kernel_h, kernel_v, sum, off, window_3);

	printf("%d\n", res);

}
