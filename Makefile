JADE = $(shell find *.jade)
HTML = $(JADE:.jade=.html)

all: $(HTML)

%.html: %.jade
	/Users/lhcezar/node_modules/jade/bin/jade < $< --path $< > $@

clean:
	rm -f $(HTML)

.PHONY: clean
