# codeless

Static site starter template for [Middleman](http://middlemanapp.com) based on [slimmer](https://github.com/polymatt/slimmer) with Ruby on Rails architecture.

###### Preprocessing
- [Slim](http://slim-lang.com) *[for html]*
- [SASS](http://sass-lang.com) *[for css]*
- [CoffeeScript](http://coffeescript.org) *[for js]*

###### Tools
- [Bower](http://bower.io) *[js package management]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*
- [Middleman Autoprefixer](https://github.com/middleman/middleman-autoprefixer) *[Automatically add vendor prefixes to CSS rules]*
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*


## Getting Started

1. Install Middleman

    gem install middleman

2. Install codeless template

    mkdir ~/.middleman #if it doesn't exist yet
    cd ~/.middleman
    git clone git@github.com:flexbox/codeless.git codeless

3. Start your project

    cd ~/path/to/your/project
    middleman init PROJECT_NAME --template=codeless

## Bower

1. Find and install the packages you need…

    bower search PACKAGE_NAME
    bower install ACTUAL_PACKAGE_NAME -S

2. Include the assets in your js/css files (paths relative to the root 'bower' directory )

  `#=require 'folder/file'` - *for js files*

  `@import 'folder/file'` - *for css files*

## Architecture

Stylesheets, fonts, images, and JavaScript files go in the `/source/assets/` directory.
Vendor stylesheets and JavaScripts should go in each of their `/bower_components/` directories.

## Deploying to GitHub Pages

    rake publish

Thanks to [neo](https://github.com/neo/middleman-gh-pages) for the deployment method. More information available there.


## Contributing

If you have problems, please create a [GitHub Issue](https://github.com/flexbox/codeless/issues).

Have a fix or want to add a feature? [Pull Requests](https://github.com/flexbox/codeless/pulls) are welcome!

## Author

| [![twitter/_flexbox](https://gravatar.com/avatar/66ecc55f1bc2e5863eb516ee6f20794e?s=70)](https://twitter.com/_flexbox "Follow @_flexbox on Twitter") |
|---|
| [David Leuliette](http://davidl.fr/) |

## License

This project is free software, and may be redistributed under [GNU/GPL license](LICENSE.md).
