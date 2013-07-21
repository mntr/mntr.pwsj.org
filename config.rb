require 'slim'

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :blog do |blog|
  blog.name = "dev"
  blog.prefix = "blog/dev/"
  blog.sources = "dev-:year-:month-:day-:title.html"
  blog.permalink = ":title.html"
end

activate :blog do |blog|
  blog.name = "news"
  blog.prefix = "blog/news/"
  blog.sources = "news-:year-:month-:day-:title.html"
  blog.permalink = ":title.html"
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# This settings from http://qiita.com/yterajima/items/d7deec7cc0caaf95982e
# Slim setteings
Slim::Engine.set_default_options :pretty => true
# shortcut
Slim::Engine.set_default_options :shortcut => {
  '#' => {:tag => 'div', :attr => 'id'},
  '.' => {:tag => 'div', :attr => 'class'},
  '&' => {:tag => 'input', :attr => 'type'}
}
#set :slim, :layout_engine => :slim

# Markdown settings
set :markdown, :tables => true, :autolink => true, :gh_blockcode => true
set :markdown, :fenced_code_blocks => true, :with_toc_data => true
set :markdown_engine, :redcarpet

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
