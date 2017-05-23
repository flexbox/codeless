::Sass.load_paths << File.join(root, 'node_modules')

require 'slim'

activate :autoprefixer, browsers: ['last 2 versions', 'ie 8', 'ie 9']
activate :livereload
activate :directory_indexes

set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

# Build-specific configuration
configure :build do
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source/assets/images/logos/')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      'favicon_base.png' => [
        { icon: 'chrome-touch-icon-192x192.png' },
        { icon: 'apple-touch-icon.png', size: '152x152' },
        { icon: 'ms-touch-icon-144x144-precomposed.png', size: '144x144' },
        { icon: 'favicon-196x196.png' },
        { icon: 'favicon-160x160.png' },
        { icon: 'favicon-96x96.png' },
        { icon: 'favicon-32x32.png' },
        { icon: 'favicon-16x16.png' },
        { icon: 'favicon.ico', size: '64x64,32x32,24x24,16x16' },
      ]
    }
  end

  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html, remove_input_attributes: false
  activate :minify_javascript

  activate :sitemap, hostname: @app.data.settings.site.url
  activate :sitemap_ping do |config|
    config.host = "#{@app.data.settings.site.url}"
  end

  activate :robots,
    rules: [{:user_agent => '*', :allow => %w(/)}],
    sitemap: @app.data.settings.site.url+'/sitemap.xml'

  # Use this for github.io gh-pages
  set :relative_links, true
  activate :relative_assets
end

# Push-it to the web
activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch        = 'gh-pages'
  deploy.build_before  = true # always use --no-clean options

  committer_app = "#{Middleman::Deploy::PACKAGE} v#{Middleman::Deploy::VERSION}"
  commit_message = "Deployed using #{committer_app}"

  if ENV["TRAVIS_BUILD_NUMBER"] then
    commit_message += " (Travis Build \##{ENV["TRAVIS_BUILD_NUMBER"]})"
  end

  deploy.commit_message = commit_message
end
