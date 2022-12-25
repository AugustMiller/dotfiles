install: brew config

brew: always
	brew bundle check || brew bundle install

config: always
	@echo "Installing configuration files..."
	install ./config/fish/brew.fish ~/.config/fish/conf.d/brew.fish

always:
