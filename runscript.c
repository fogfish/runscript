#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	if (argc > 1)
	{
   		setuid( 0 );
   		system( argv[1] );
	} else {
		printf("Invalid argument\n");
	}
   	return 0;
}

