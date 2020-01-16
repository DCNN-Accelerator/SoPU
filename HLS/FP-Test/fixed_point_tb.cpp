#include "fixed_point.hpp"
#include "iostream"


int main()
{

	output_t conv_test_out;

	pixel_t line_1_test    = 1;
	pixel_t line_2_test    = 2;
	pixel_t uart_line_test = 3;


	conv_2d(line_1_test, line_2_test, uart_line_test, conv_test_out);

	std::cout << "Convolved Value: " << conv_test_out << "/n";


	return 0;

}
