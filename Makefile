include makeinclude

all:
	mkdir -p lib
	( for f in $(DIRS); do ( cd $$f ; make all ) || exit 1 ; done )

clean:
	rm -rf *~ lib/ include/GL/*~ TAGS
	( for f in $(DIRS); do ( cd $$f ; make clean ; ) done )

install:
	( for f in $(DIRS); do ( cd $$f ; make install ; ) done )
