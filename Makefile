html:
	$(MAKE) -C docs html

clean:
	$(MAKE) -C docs clean
	rm -rf docs/build
