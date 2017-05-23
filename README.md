<img src="https://raw.githubusercontent.com/flexbox/codeless/master/source/assets/images/codeless-middleman.jpg" alt="Middleman advanced template" align="center" />
<br />

<div align="center"><strong>Start your next Middleman project in seconds</strong></div>
<div align="center">A highly scalable, Ruby on Rails ready foundation with the best DX with a focus on SEO & best practices.</div>
<br />

<a href="https://travis-ci.org/flexbox/codeless">
  <img src="https://travis-ci.org/flexbox/codeless.svg?branch=master" alt="Build Status">
</a>

[![Greenkeeper badge](https://badges.greenkeeper.io/flexbox/codeless.svg)](https://greenkeeper.io/)

<br />

###### Tools
- [Slim](http://slim-lang.com) *[for html]*
- [Sass](http://sass-lang.com) *[for css]*
- [Yarn](https://yarnpkg.com) *[package management]*
- ~~[Bower](http://bower.io) *[package management]*~~

###### Middleman
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*
- [Middleman Autoprefixer](https://github.com/middleman/middleman-autoprefixer) *[Automatically add vendor prefixes to CSS rules]*
- [Middleman Favicon Maker](https://github.com/follmann/middleman-favicon-maker) *[Generate favicon files in various sizes]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*

## Start a new project

1. Fork this repo
1. Rename-it then clone it on your computer


## Getting Started

You need [Bundler](http://bundler.io/) to install gems

    $ gem install bundler
    $ bundle install

### [Yarn](https://yarnpkg.com)

Install front-end packages you need

    $ yarn add [package]
    $ yarn upgrade [package]
    
Installing all the dependencies of project

    $ yarn

### Browser preview

    $ bundle exec middleman server

### Deploying to GitHub Pages

    $ bundle exec middleman deploy
    
_Notes:_

If you get an error with `middleman build`, make sure [Imagemagik](http://www.imagemagick.org/script/index.php) is installed 

    $ brew install imagemagick

## Author

| [![twitter/_flexbox](https://gravatar.com/avatar/66ecc55f1bc2e5863eb516ee6f20794e?s=70)](https://twitter.com/_flexbox "Follow @_flexbox on Twitter") |
|---|
| [David Leuliette](http://davidl.fr/) |

## License

This project is free software, and may be redistributed under [GNU/GPL license](LICENSE.md).
