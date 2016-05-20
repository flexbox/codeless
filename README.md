# codeless

Static site starter template for [Middleman](http://middlemanapp.com) with Ruby on Rails architecture.

[![Build Status](https://travis-ci.org/flexbox/codeless.svg?branch=master)](https://travis-ci.org/flexbox/codeless)

[![Coverage Status](https://coveralls.io/repos/github/flexbox/codeless/badge.svg?branch=master)](https://coveralls.io/github/flexbox/codeless?branch=master)

###### Preprocessing
- [Slim](http://slim-lang.com) *[for html]*
- [Sass](http://sass-lang.com) *[for css]*
- [CoffeeScript](http://coffeescript.org) *[for js]*

###### Tools
- [Bower](http://bower.io) *[js package management]*
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*
- [Middleman Autoprefixer](https://github.com/middleman/middleman-autoprefixer) *[Automatically add vendor prefixes to CSS rules]*
- [Middleman Favicon Maker](https://github.com/follmann/middleman-favicon-maker) *[Generate favicon files in various sizes]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*

## Getting Started

Install Middleman

    $ gem install middleman

Install codeless template

    $ mkdir ~/.middleman # if it doesn’t exist yet
    $ cd ~/.middleman
    $ git clone git@github.com:flexbox/codeless.git codeless

Start your project

    $ cd ~/path/to/your/project
    $ middleman init awesome-project --template=codeless
    
If you use __Middleman 4__, they removed the ability to create custom reusable templates from either `~/.middleman` or gems.
Then you'll have to use the command below

    $ middleman init -T flexbox/codeless awesome-project
    
### Dependencies

You need [Bundler](http://bundler.io/) to install gems

    $ gem install bundler

Then, install them

    $ bundle install

### Bower

Find and install the packages you need…

    $ bower search package-name
    $ bower install package-name -S

Include the assets in your `js`/`css` files (paths relative to the root `bower_component` directory )

### Architecture

Stylesheets, fonts, images, and JavaScript files go in the `/source/assets/` directory.
Vendor stylesheets and JavaScripts should go in each of their `/bower_components/` directories.

    codeless/
    ├── bower_components/
    │    └── ...
    ├── source/
    │   ├── assets/
    │   └── ...
    
###### css files

    @import 'folder/file'

###### js files

    #=require 'folder/file'

### Browser preview

    middleman server

### Deploying to GitHub Pages

    middleman build
    middleman deploy
    
Note :
- If you get an error with `middleman build`, make sure [Imagemagik](http://www.imagemagick.org/script/index.php) is installed `brew install imagemagick`
- If you deploy on Github pages, don't forget to uncomment these two lines in `config.rb` :
```
  activate :relative_assets
  set :relative_links, true
```

## Author

| [![twitter/_flexbox](https://gravatar.com/avatar/66ecc55f1bc2e5863eb516ee6f20794e?s=70)](https://twitter.com/_flexbox "Follow @_flexbox on Twitter") |
|---|
| [David Leuliette](http://davidl.fr/) |

## License

This project is free software, and may be redistributed under [GNU/GPL license](LICENSE.md).
