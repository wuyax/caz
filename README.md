# CAZ (Clean And Zip)

CAZ is a simple yet powerful command-line tool for cleaning .DS_Store files from directories and creating zip archives.

## Features

- Automatically removes all .DS_Store files from directories and subdirectories
- Creates zip archives of directories
- Supports custom archive names
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
# Compress current directory using directory name as archive name
caz

# Compress current directory with specified archive name
caz ./ myarchive.zip

# Compress specified directory
caz /path/to/dir

# Compress specified directory with custom archive name
caz /path/to/dir custom.zip
```

## Options

```bash
-h, --help    Show help information
-v, --version Show version information
```

## License

MIT License - see [LICENSE](LICENSE) file for details