# codeless

Static site starter template for [Middleman](http://middlemanapp.com) based on [slimmer](https://github.com/polymatt/slimmer) with Ruby on Rails architecture.

###### Preprocessing
- [Slim](http://slim-lang.com) *[for html]*
- [Sass](http://sass-lang.com) *[for css]*
- [CoffeeScript](http://coffeescript.org) *[for js]*

###### Tools
- [Yarn](https://yarnpkg.com) *[package management]*
- ~~[Bower](http://bower.io) *[package management]*~
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*
- [Middleman Autoprefixer](https://github.com/middleman/middleman-autoprefixer) *[Automatically add vendor prefixes to CSS rules]*
- [Middleman Favicon Maker](https://github.com/follmann/middleman-favicon-maker) *[Generate favicon files in various sizes]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*


## Getting Started

Install Middleman

    $ gem install middleman

Install codeless template

    $ mkdir ~/.middleman #if it doesn't exist yet
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

If the project already contains Yarn dependencies, run

    $ yarn

### Bower

Find and install the packages you need…

    $ yarn search package-name
    $ yarn add package-name

###### css files

    @import 'folder/file'

###### js files

    #=require 'folder/file'


### Architecture

Stylesheets, fonts, images, and JavaScript files go in the `/source/assets/` directory.
Vendor stylesheets and JavaScripts should go in each of their `/bower_components/` directories.

    codeless/
    ├── node_modules/
    │    └── ...
    ├── source/
    │   ├── assets/
    │   └── ...
    
### Browser preview

    middleman server

### Deploying to GitHub Pages

    middleman build
    middleman publish

## Contributing

If you have problems, please create a [GitHub Issue](https://github.com/flexbox/codeless/issues).

Have a fix or want to add a feature? [Pull Requests](https://github.com/flexbox/codeless/pulls) are welcome!

## Author

| [![twitter/_flexbox](https://gravatar.com/avatar/66ecc55f1bc2e5863eb516ee6f20794e?s=70)](https://twitter.com/_flexbox "Follow @_flexbox on Twitter") |
|---|
| [David Leuliette](http://davidl.fr/) |

## License

This project is free software, and may be redistributed under [GNU/GPL license](LICENSE.md).
