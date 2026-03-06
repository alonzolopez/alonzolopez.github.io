# CLAUDE.md

Claude Code persistent context for this Jekyll/GitHub Pages project.

## Project Overview

Jekyll-based GitHub Pages site using the Minimal Mistakes theme, live at www.alonzolopez.com.

## Local Development

- `make serve` — builds and serves the site at http://localhost:4000
- Verbose mode: `bundle exec jekyll serve --verbose`
- Draft posts: `bundle exec jekyll serve --drafts`

## Project Structure

- `_posts/` — blog posts (YEAR-MONTH-DAY-title.md format)
- `_portfolio/` — portfolio project pages
- `_music/` — music pages
- `_quotes/` — quote posts
- `_pages/` — static pages
- `_data/navigation.yml` — masthead/nav config
- `_config.yml` — site configuration
- `documentation/devnotes.md` — detailed workflow notes

## Common Workflows

- **Adding a post**: create `_posts/YEAR-MONTH-DAY-title.md` with YAML front matter
- **Adding a portfolio project**: add `.md` to `_portfolio/`
- **Adding a music page**: add `.md` to `_music/`
- **Adding a quote**: add `.md` to `_quotes/`

## References

- `README.md` — setup and local dev
- `documentation/devnotes.md` — full workflow notes
