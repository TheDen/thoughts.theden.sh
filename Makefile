HUGO=hugo
BASE_URL=https://theden.github.io/thoughts.theden.sh/
OUTPUT_DIR=public
CPU_CORES=$(shell nproc)

.PHONY: all server build clean deploy

all: build

## Start the Hugo development server
server:
	@echo "Starting Hugo server..."
	$(HUGO) server -D

## Build the Hugo site with additional optimizations
build: clean
	@echo "Building site..."
	$(HUGO) --cleanDestinationDir --gc --minify -b "$(BASE_URL)"

	@echo "Running Prettier..."
	prettier -w .

	@echo "Minifying everything we can..."
	find ./$(OUTPUT_DIR)/ -type f \( \
	  -name "*.html" \
	  -o -name "*.js" \
	  -o -name "*.css" \
	  -o -name "*.svg" \
	  -o -name "*.xml" \
	  -o -name "*.json" \
	  \) \
	  -and ! -name "*.min*" -print0 | \
	  xargs -0 -n1 -P"$(CPU_CORES)" -I '{}' sh -c 'minify -o "{}" "{}"'

	@echo "Copying CNAME file..."
	cp CNAME $(OUTPUT_DIR)/

## Clean the generated site files
clean:
	@echo "Cleaning up..."
	rm -rf $(OUTPUT_DIR)
