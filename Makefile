
all:

make:
	vsce package

install: make
	code --install-extension mcdp-language-0.0.1.vsix