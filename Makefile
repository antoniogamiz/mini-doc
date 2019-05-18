# setup vars

html: clean
	git clone https://github.com/perl6/doc
	echo "Replacing files"
	rm -rf doc/doc
	cp -a test-doc/ doc/ 
	rm doc/type-graph.txt
	cp type-graph.txt doc/type-graph.txt
	mv doc/test-doc doc/doc
	cd doc && make html

run:
	cd doc && make run

setup: clean html
	git clone https://github.com/antoniogamiz/Perl6-LinkHealth

build:
	cd doc && make html
	cd Perl6-LinkHealth && make check-local LOCAL_DOC_PATH=../doc/doc PREVIOUS_FILE_PATH=../previous-links.txt CURRENT_FILE_PATH=../current-links.txt

clean:
	rm -rf doc
	rm -rf Perl6-LinkHealth