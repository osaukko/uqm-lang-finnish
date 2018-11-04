#ZIP=7z
#ZIP_FLAGS=u -uq0 -tzip -mx9
ZIP=zip
ZIP_FLAGS=-FSr9
PACKAGE_DIR=lang-finnish
PACKAGE_FILE=uqm-0.7.0-fin.uqm
INSTALL_PATH=/usr/share/uqm/content/addons/

$(PACKAGE_FILE): $(PACKAGE_DIR)
	$(ZIP) $(ZIP_FLAGS) $(PACKAGE_FILE) $(PACKAGE_DIR)

install: $(PACKAGE_FILE)
	install -m 644 $(PACKAGE_FILE) $(INSTALL_PATH)

uninstall:
	rm -f $(INSTALL_PATH)$(PACKAGE_FILE)

run:
	uqm --addon lang-finnish

.PHONY: clean

clean:
	rm -f $(PACKAGE_FILE)

