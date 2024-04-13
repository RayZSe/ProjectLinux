README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "Date and time at which make was run: $$(date)" >> README.md
    echo "Number of lines of code in guessinggame.sh: $$(cat guessinggame.sh | wc -l)" >> README.md

.PHONY: clean
clean:
    rm README.md
