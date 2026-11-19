.PHONY: all

all:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "This project is a Bash guessing game." >> README.md
	@echo "" >> README.md
	@echo "- Date and time generated: $$(date)" >> README.md
	@echo "- Lines in guessinggame.sh: $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md