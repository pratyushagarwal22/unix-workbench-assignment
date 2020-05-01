all: README.md

README.md:
	echo '### The Unix Workbench | Sean Kross | Peer-graded Assignment: Shell Scripting + Git and GitHub | Files included - makefile, README.md, guessinggame.sh' > README.md
	echo '* This makefile was run at: $(shell timedatectl)' >> README.md
	echo '* There Number of lines present are :  $(shell wc -l guessinggame.sh)' >> README.md

clean:
	rm README.md
