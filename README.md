<img src="https://raw.githubusercontent.com/flexbox/codeless/master/source/assets/images/codeless-middleman.jpg" alt="Middleman advanced template" align="center" />
<br />

<div align="center"><strong>Start your next Middleman 4 project in seconds with the best DX</strong></div>
<div align="center">A highly scalable, Middleman template with a focus on SEO & best practices.</div>
<br />

[![Greenkeeper badge](https://badges.greenkeeper.io/flexbox/codeless.svg)](https://greenkeeper.io/)

###### Tools
- [Slim](http://slim-lang.com) *[for html]*
- [Sass](http://sass-lang.com) *[for css]*
- [Yarn](https://yarnpkg.com) *[package management]*
- [Webpack](https://webpack.js.org/) *[bundle for assets]*

###### Middleman
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*
- [Middleman Autoprefixer](https://github.com/middleman/middleman-autoprefixer) *[Automatically add vendor prefixes to CSS rules]*
- [Middleman Favicon Maker](https://github.com/follmann/middleman-favicon-maker) *[Generate favicon files in various sizes]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*

## Start a new project

    $ gem install middleman
    $ middleman init MY_PROJECT_FOLDER -T flexbox/codeless

## Getting Started

You need [Bundler](http://bundler.io/) to install gems

    $ gem install bundler
    $ bundle install
    $ yarn

### Browser preview – _[http://locahost:4567](http://locahost:4567)_

    $ bundle exec middleman server

### Deploying to GitHub Pages

    $ bundle exec middleman deploy
    
__💡 Note:__ If you get an error with `middleman build`, make sure [Imagemagik](http://www.imagemagick.org/script/index.php) is installed 

    $ brew install imagemagick
