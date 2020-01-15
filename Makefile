MARKDOWN=markdown
BROWSER=xdg-open
HIGHLIGHT=pygments
TARGET=TRAINING

SRC = TRAINING.md
SRC_ASSETS = style.css script.js

TMPFILE=/tmp/training.html.tmp

.PHONY: all
all: index.html 

index.html: $(SRC)
	pandoc --toc --number-sections --highlight-style=$(HIGHLIGHT) -f markdown -t html5 -o $@ $(SRC) -c style.css

# $(TARGET).zip: $(TARGET).html $(SRC_RESOURCES)
#	rm -rf $(TARGET).zip
#	zip $(TARGET).zip $(TARGET).html $(SRC_RESOURCES)


.PHONY: exec_html
exec: $(TARGET).html
	$(BROWSER) $(TARGET).html

.PHONY: clean
clean: 
	rm -rf $(TARGET).html  $(TARGET).zip

