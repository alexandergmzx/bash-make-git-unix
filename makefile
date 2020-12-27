#------------------------------------------------------------------------------
# Simple make file for gcc
#
# Use: make [TARGET]
#
# Author: alexandergmzx
# Date:   January 13, 2019
#
#------------------------------------------------------------------------------

all: README.md

README.md: guessinggame.sh
	echo "Project: The file number guessing game" > $@
	echo "DATE:" >> $@
	date >> $@
	echo "NUMBER OF LINES:" >> $@
	wc -l $< | egrep -o "[0-9]+" >> $@

.PHONY: clean
clean:
	rm -f README.md
