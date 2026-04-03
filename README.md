# Homebrew Tap for dcli

This is a Homebrew tap for the [dcli](https://github.com/oleg-koval/dcli) CLI tool.

## Installation

```bash
brew tap oleg-koval/dcli
brew install dcli
```

## Usage

```bash
dcli docker clean [service ...]
dcli docker restart [service ...]
dcli git reset develop
dcli git reset acceptance
```

## Configuration

Create `~/.dcli/config.yaml`:

```yaml
repositories:
  - path: /path/to/repo1
    name: repo1
  - path: /path/to/repo2
    name: repo2
```

## Updating

```bash
brew upgrade dcli
```

## License

MIT
