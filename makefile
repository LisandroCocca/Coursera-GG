# Makefile

LC = $(shell wc -l < guessing_game.sh)
DATE = $(shell date)

README.md :	guessing_game.sh
	touch README.md
	echo "# Project Title: Guessing_Game" >> README.md
	echo "## Project Author: Lisandro Cocca" >> README.md
	echo "The code has a total of ${LC} lines" >> README.md
	echo "Date and Time: ${DATE}" >> README.md

	
