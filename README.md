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
  - path: /Users/username/projects/repo1  # Use absolute path
    name: repo1
  - path: /Users/username/projects/repo2  # Use absolute path
    name: repo2
```

## Updating

```bash
brew upgrade dcli
```

## License

MIT
