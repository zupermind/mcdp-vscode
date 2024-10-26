
all:

make:
	rm *.vsix
	vsce package

install: make
	code --install-extension mcdp-language-*.vsix
