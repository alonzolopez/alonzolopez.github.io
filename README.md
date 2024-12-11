# alonzolopez.github.io
## Setup
1. First, follow [github's instructions to create your own website](https://pages.github.com/).

2. Next, install Jekyll on your machine: 
   - Install [Jekyll on Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/) with the following commands:
        ```bash
        sudo apt-get install ruby-full build-essential zlib1g-dev
        echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
        echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
        echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
        source ~/.bashrc
        gem install jekyll bundler
        ```
    - Install [Jekyll on MAC OS](https://jekyllrb.com/docs/installation/macos/). Assuming you already have homebrew installed, the instructions are as below:
        ```bash
        # install chruby and ruby-install
        brew install chruby ruby-install

        # check output of CLT: and Xcode:
        brew config

        # IF CLT: or Xcode output starts with `14`, install the latest version of ruby
        # with this command
        ruby-install ruby 3.3.5 --enable-shared 

        # else
        ruby-install ruby

        # configure your shell to automatcially use chruby
        echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
        echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
        echo "chruby ruby-3.1.2" >> ~/.zshrc # run 'chruby' to see actual version
        ```
        Then quit and re-launch the terminal and check that everything is working with:
        ```bash
        ruby -v
        ```

        After restarting ruby, install jekyll:
        ```bash
        gem install jekyll
        ```

        Install missing gems:
        ```bash
        bundle install
        bundle add webrick
        ```
3. Build the website locally:
    ```bash
    cd <path-to-alonzolopez.github.io>
    bundle exec jekyll serve
    ```
    
    Then open `http://localhost:4000` in your browser to view the website locally.
