html:
	$(MAKE) -C docs html

pdf:
	$(MAKE) -C docs latexpdf

clean:
	$(MAKE) -C docs clean
	rm -rf docs/build
