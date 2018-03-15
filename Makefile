PREFIX ?= ${HOME}/.local

help:
	@echo "Run 'make install' to install bmakejob"
	@echo "By default, it will be installed in '${HOME}/.local'"
	@echo "To set another folder, run 'PREFIX=/path/to/folder make install'"
	@echo "The script will be installed in the subfolder 'bin'"
	@echo "Make sure this folder is in your PATH"

install:
	@echo "Creating the destination folder"
	@mkdir -p $(PREFIX)/bin
	@echo "Installing the script"
	@cp bmakejob $(PREFIX)/bin/bmakejob
	@chmod 755 $(PREFIX)/bin/bmakejob
	@echo "Installed script in '${PREFIX}/bin'"
	@echo "Make sure this folder is in your PATH"

uninstall:
	@echo "Removing the script"
	@rm -rf $(PREFIX)/bin/bmakejob
