.PHONY: help serve

help:
	@echo "Available targets:"
	@echo "  serve  - Run the site locally at http://localhost:4000"

serve:
	bundle exec jekyll serve
