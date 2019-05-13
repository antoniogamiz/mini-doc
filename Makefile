
html: clean
	git clone https://github.com/perl6/doc
	rm -rf doc/doc
	cp -a test-doc/ doc/ 
	rm doc/type-graph.txt
	cp type-graph.txt doc/type-graph.txt
	mv doc/test-doc doc/doc
	cd doc && make html

run: html
	cd doc && make run
	
clean:
	rm -rf doc