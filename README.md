# MCDP Language Support for VS Code

Syntax highlighting and language support for the MCDP (Monotone Co-Design Problems) modeling language in Visual Studio Code.

## Features

- Syntax highlighting for MCDP files (`.mcdp`, `.mcdp_template`, `.mcdp_value`, `.mcdp_poset`, `.mcdp_interface`, `.mcdp_primitivedp`)
- Dark theme optimized for MCDP
- Language configuration for better editing experience

## Installation

1. Open VS Code
2. Press `Ctrl+P` / `Cmd+P`
3. Type `ext install mcdp-language`

Or install directly from the [Visual Studio Code Marketplace](https://marketplace.visualstudio.com/items?itemName=publisher.mcdp-language).

## File Extensions

The extension recognizes the following file types:
- `.mcdp` - MCDP models
- `.mcdp_template` - MCDP templates
- `.mcdp_value` - MCDP values
- `.mcdp_poset` - MCDP posets
- `.mcdp_interface` - MCDP interfaces
- `.mcdp_primitivedp` - MCDP primitive DPs

## License

This extension is licensed under the [MIT License](LICENSE).



## Contributing

Note that the YAML files are the original source code. Then, they are converted to JSON.


### Dependencies

- The `yq` command is used to convert YAML to JSON. 


### Installing

This command creates the package:

    make package

This command installs it in the local VS Code:

    make install

### Workflow

- Edit the YAML files
- Run `make install`
- Test in VS Code by opening a `.mcdp` file and **reloading the window** (Ctrl+Shift+P -> Developer: Reload Window)
