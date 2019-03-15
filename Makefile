build: build_production

build_production:
	echo Step 1/2: Translating your Open API Spec to Slate Markdown...
	node widdershins openapi.yaml -o source/index.html.md

	echo Step 2/2: Building your static content...
	bundle exec middleman build --clean

setup: 
	npm install -g widdershins
