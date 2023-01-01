# Idempotent setup
setup: prerequisites install

# Install Brew and other requirements
prerequisites:
	command -v brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages
install: brew config

# Install or update, only when necessary
brew: always
	brew bundle check || brew bundle

# Apply configuration files
config: always
	@echo "Installing configuration files..."
	install ./config/fish/*.fish ~/.config/fish/conf.d/

# .PHONY equivalent target
always:
