# HC      = ghc
# Use the following line if you have stack installed but not ghc by itself.
HC      = stack ghc --


app:
	cd src
	$(HC) src/ArabicDiacriticRemoval.hs
	mkdir -p bin
	$(HC) src/Main.hs -isrc -o bin/arabic-diacritic-removal

clean: clean_sources
	rm bin/arabic-diacritic-removal

clean_sources:
	rm src/ArabicDiacriticRemoval.o
	rm src/Main.o
	rm src/ArabicDiacriticRemoval.hi
	rm src/Main.hi
