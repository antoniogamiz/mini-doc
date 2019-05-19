setup: clean
	git clone https://github.com/perl6/doc
	echo "Replacing files"
	rm -rf doc/doc
	rm -rf LinkHealth
	cp -a test-doc/ doc/ 
	rm doc/type-graph.txt
	cp type-graph.txt doc/type-graph.txt
	mv doc/test-doc doc/doc
	git clone https://github.com/antoniogamiz/Perl6-LinkHealth

build:
	d=$$(date +%s)\
	; cd doc && make html \
    && echo "Build took $$(($$(date +%s)-d)) seconds" \
	cd Perl6-LinkHealth && make check-local LOCAL_DOC_PATH=../doc/doc PREVIOUS_FILE_PATH=../previous-links.txt CURRENT_FILE_PATH=../current-links.txt

run:
	cd doc && make run

clean:
	rm -rf doc
	rm -rf Perl6-LinkHealth