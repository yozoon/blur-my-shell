.PHONY: build_pkg build vm_test install remove clean


build:
	glib-compile-schemas src/schemas
	mkdir -p build/
	cp -r src/* build/
	rm -f build/prefs.ui~


build_pkg: build
	mkdir -p pkg/
	cd build/ && zip -r ../pkg/blur-my-shell@aunetx.zip .


vm_test: build
	rm -rf $(HOME)/Documents/shared/blur_my_shell/blur-my-shell@aunetx
	mkdir -p $(HOME)/Documents/shared/blur_my_shell/blur-my-shell@aunetx
	cp -r build/* $(HOME)/Documents/shared/blur_my_shell/blur-my-shell@aunetx/


install: build
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/blur-my-shell@aunetx
	mkdir -p $(HOME)/.local/share/gnome-shell/extensions/blur-my-shell@aunetx
	cp -r build/* $(HOME)/.local/share/gnome-shell/extensions/blur-my-shell@aunetx/


remove:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/blur-my-shell@aunetx


clean:
	rm -rf pkg/ build/
