HTMX_VERSION=2.0.4

.PHONY: download-htmx
## download-htmx: Downloads HTMX minified js file
download-htmx:
	@curl -o static/htmx.min.js https://unpkg.com/htmx.org@${HTMX_VERSION}/dist/htmx.min.js

.PHONY: generate
## Run the templ generate command
generate:
	@templ generate

.PHONY: help
## help: Prints this help message
help:
	@echo "Usage:"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
