# CAZ (Clean And Zip)

CAZ is a simple yet powerful command-line tool for cleaning .DS_Store files from directories and creating zip archives.

## Features

- Automatically removes all .DS_Store files from directories and subdirectories
- Creates zip archives with flexible options
- Supports keeping or excluding root directory in archive
- Clean command-line interface

## Installation

### Using Homebrew (Recommended)

```bash
brew tap wuyax/caz
brew install caz
```

### Manual Installation

```bash
curl -fsSL https://raw.githubusercontent.com/wuyax/caz/refs/heads/master/install.sh | bash
```

## Usage

```bash
# Compress directory contents only (without root directory)
caz /path/to/dir

# Compress including the root directory
caz -r /path/to/dir

# Compress current directory contents only
caz

# Compress current directory including the root directory
caz -r

# Compress with custom archive name
caz /path/to/dir custom.zip

# Compress with custom archive name, including root directory
caz -r /path/to/dir custom.zip
```

## Options

```bash
-h, --help    Show help information
-v, --version Show version information
-r, --root    Keep root directory in archive
```

### Archive Structure Example

For a directory structure like this:
```
myproject/
├── src/
│   └── index.js
├── docs/
│   └── README.md
└── package.json
```

Without `-r` option (default):
```
myproject.zip
├── src/
│   └── index.js
├── docs/
│   └── README.md
└── package.json
```

With `-r` option:
```
myproject.zip
└── myproject/
    ├── src/
    │   └── index.js
    ├── docs/
    │   └── README.md
    └── package.json
```

## License

MIT License - see [LICENSE](LICENSE) file for details