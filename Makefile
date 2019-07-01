setup: clean
	git clone https://github.com/perl6/doc
	echo "Replacing files..."
	rm -rf doc/doc
	rm -rf LinkHealth
	cp -a test-doc/ doc/ 
	mv doc/test-doc doc/doc
	cd doc && make init-highlights
	cp CustomMakefile doc/Makefile
	git clone https://github.com/antoniogamiz/Perl6-LinkHealth

update-test-doc:
	rm -rf doc/doc
	cp -a test-doc/ doc/ 
	mv doc/test-doc doc/doc

build:
	d=$$(date +%s) \
	; cd doc && make html \
	&& echo "\033[92m Build took $$(($$(date +%s)-d)) seconds \033[0m"	
	cd Perl6-LinkHealth && make check-local LOCAL_DOC_PATH=../doc/doc PREVIOUS_FILE_PATH=../assets/data/previous-links.txt CURRENT_FILE_PATH=../assets/data/current-links.txt

run:
	cd doc && make run

clean:
	rm -rf doc
	rm -rf Perl6-LinkHealth