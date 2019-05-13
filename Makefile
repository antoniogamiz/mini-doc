
html: clean
	git clone https://github.com/perl6/doc
	rm -rf doc/doc
	cp -a test-doc/ doc/ 
	mv doc/test-doc doc/doc
	cd doc && make html

run: html
	cd doc && make run
	
clean:
	rm -rf doc