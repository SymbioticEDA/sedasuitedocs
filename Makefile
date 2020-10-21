html: download
	$(MAKE) -C docs html

pdf: download
	$(MAKE) -C docs latexpdf

clean:
	$(MAKE) -C docs clean
	rm -rf docs/build

download:
	@if [ ! -d docs/source/mcy ]; then git clone https://github.com/yosyshq/mcy docs/source/mcy; fi
	@cd docs/source/mcy && git pull
	@if [ ! -d docs/source/SymbiYosys ]; then git clone https://github.com/yosyshq/SymbiYosys docs/source/SymbiYosys; fi
	@cd docs/source/SymbiYosys && git pull
