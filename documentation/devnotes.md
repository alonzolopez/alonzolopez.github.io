# Webiste Creation Notes
## Setup
1. First, follow [github's instructions to create your own website](https://pages.github.com/).

2. Next, [install Jekyll on Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/) with the following commands:
    ```
    sudo apt-get install ruby-full build-essential zlib1g-dev
    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    gem install jekyll bundler
    ```
## Jekyll Setup
Follow the [Jekyll Quickstart](https://jekyllrb.com/docs/)

1. Create a new Jekyll site at ./myblog.
    ```
    cd <path-to-repo>
    jekyll new myblog
    ```
2. Build the site and make it available on a local server.
    ```
    cd myblog
    bundle exec jekyll serve
    ```

3. Browse to http://localhost:4000

## Jekyll Themes

Browse themes from the several links [here](https://jekyllrb.com/docs/themes/)

Some themes I like:
- [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes)
- Beautiful Jekyll
- [Gradfolio](https://jamstackthemes.dev/theme/gradfolio/)
- [Prologue](https://jamstackthemes.dev/theme/jekyll-theme-prologue/)
- [Jasper](https://jamstackthemes.dev/theme/jasper2/)

## Workflow
Make changes in the repo, then run the following to test locally:
```
bundle exec jekyll serve
```
Go to the url in the terminal to see the changes locally.

Then push to the central repo hosted on github and wait for changes to appear online.

## Minimal Mistakes Theme
[Quick Start Guide](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/)
```
gem "minimal-mistakes-jekyll"
```

To spin up the site:
```
bundle exec jekyll serve
```

Left off needing to follow this: https://mmistakes.github.io/minimal-mistakes/docs/installation/

May need to follow this guide instead: https://docs.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll

I think I messed up by running `jekyll new myblog` and not `jekyll new .`

I should've run the [MM template auto-generator](https://github.com/mmistakes/mm-github-pages-starter/generate) to create my repo `alonzolopez/alonzolopez.github.io`.

See [configuration](https://mmistakes.github.io/minimal-mistakes/docs/configuration) for more info on configuring the site.

Next steps:
- Configure my site following [MM's Configuration guide](https://mmistakes.github.io/minimal-mistakes/docs/configuration/)
- Add a quotes page
- check the skins options 
- figure out how to do a portfolio gallery. maybe look at [Layouts](https://mmistakes.github.io/minimal-mistakes/docs/layouts/)
- Edit the [navigation](https://mmistakes.github.io/minimal-mistakes/docs/navigation/)

