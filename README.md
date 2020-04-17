# BGW blog

This repository contains source files for [BGW blog](https://blog.boardgamerweekly.com/).

## Dev setup

1. Install [Hugo](https://gohugo.io/getting-started/installing/) Extended
    - On macOS: `brew install hugo` - might not install extended version
    - On Windows: `choco install hugo-extended`
    - On Linux: `snap install hugo --channel=extended`
    - We need [extended version](https://gohugo.io/troubleshooting/faq/) for SASS support
    - Binaries can be downloaded from [GitHub](https://gohugo.io/troubleshooting/faq/)
3. Clone this repo.
    - `git clone https://github.com/miroslavpopovic/blog-boardgamerweekly blog-boardgamerweekly`
4. Clone GitHub Pages repository `blog-boardgamerweekly.github.io`:
    - `git clone https://github.com/miroslavpopovic/blog-boardgamerweekly.github.io.git`
5. Go to `/blog-boardgamerweekly` root:
    - `cd blog-boardgamerweekly`
6. Open the site in editor (i.e. Visual Studio Code):
    - `code .`
7. Run Hugo server
    - `hugo server -D`
    - It will watch for changes in files and refresh the browser, including the draft content.

## Source files and folders

- `content/` - main site content in markdown, each subfolder is a separate section
- `static/css/custom.css` - main CSS file override
- `static/images/` - images folder
- `themes/ananke/` - a git submodule with the theme used
- `config.toml` - main Hugo config file - contains parameters used on pages and partials

## Building output

1. Run `./publish.ps1` script with PowerShell
