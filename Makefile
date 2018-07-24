INSTALL_DIR=~/.local/bin

all:
	@echo "run 'make install'"


install:
	@echo ""
	mkdir -p $(INSTALL_DIR)
	cp shellmarks.sh $(INSTALL_DIR)
	@echo ""
	@echo "add 'source $(INSTALL_DIR)/shellmarks.sh' to your .bashrc/.zshrc"
	@echo ''
	@echo 'USAGE:'
	@echo '------'
	@echo 's <bookmark_name> - Saves the current directory as "bookmark_name"'
	@echo 'smgo <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"'
	@echo 'd <bookmark_name> - Deletes the bookmark'
	@echo 'lsm                 - Lists all available bookmarks'
	@echo 'smgo <tab>           - Tab completion is available for all commands'
	@echo 'smgo --help          - Complete usage'
	@echo 'g is an alias for smgo'
	@echo 'set SHELLMARKS_ALIAS to your preference. Default is g'
