# AGENTS.md

Guidance for AI assistants and maintainers working in this repository.

## Project Overview

This is a Hugo static website for BuyGearPump, an industrial gear pump product site.

- Main configuration: `config/_default/hugo.toml`
- Homepage content: `data/homepage.yml`
- Product content: `content/products/`
- Blog content: `content/blog/`
- Site template overrides: `layouts/`
- Base theme: `themes/hargo/`
- Images and visual assets: `assets/images/`

## Working Rules

- Prefer reading files directly before making assumptions about the site structure.
- Do not run Hugo builds, local servers, dependency downloads, or network operations unless explicitly requested.
- The current Codex shell is PowerShell 7.6.1 with UTF-8 output. Treat repository files as UTF-8.
- Do not treat terminal mojibake as file corruption. Verify by decoding the file as UTF-8 before reporting encoding problems.
- Keep changes scoped to the requested content, template, or configuration area.
- Do not overwrite generated `public/` output unless the user explicitly asks for a production build.

## Blog Guidelines

- Follow `docs/blog-guidelines.md` for blog writing, SEO structure, front matter, and blog cover image rules.

## Encoding Notes

Some English content uses non-ASCII punctuation such as smart apostrophes, en dashes, em dashes, degree symbols, plus/minus symbols, and copyright symbols. These are valid UTF-8 characters.

If PowerShell output ever shows text like `鈥`, `檚`, `卤`, `掳`, or `漏`, first verify the file with UTF-8 decoding. This may be a console display issue rather than damaged file content, especially if the shell falls back to Windows PowerShell 5.1 or code page 936.
