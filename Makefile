
all: package

package: all_json
	rm *.vsix
	vsce package
	make clean-json

YAML_FILES := $(shell find . -name "*.yaml")
JSON_FILES := $(YAML_FILES:.yaml=.json)

all_json: $(JSON_FILES)

install: package
	code --install-extension mcdp-language-*.vsix

# Rule to convert each .yaml file to .json
%.json: %.yaml
	@mkdir -p $(@D)  # Create target directory if it doesn't exist
	yq -o=json '.' $< > $@
	#chmod -w $@

clean-json:
	find . -name "*.json" -type f -delete
