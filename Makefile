build: clean
	echo "Building theme"
	pnpm install
	pnpm build
	echo "Theme built successfully!"
	echo "Collect theme dist"
	mkdir dist
	cp -r templates dist
	cp theme.yaml annotation-setting.yaml settings.yaml README.md dist
	cp -r md/* dist/templates/assets/dist/

clean:
	echo "Clean dist folder"
	rm -rf dist
