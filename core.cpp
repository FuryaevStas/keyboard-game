#include	"core.h"

int main(int argc, char *argv[]) {
	initscr();
	printw("%Hi\n");
	getch();
	endwin();

	return 0;
}