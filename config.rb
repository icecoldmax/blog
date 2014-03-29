require "redcarpet"

Time.zone = "Australia/Sydney"

activate :syntax, line_numbers: true

activate :blog do |blog|
  blog.permalink = ":title"
  blog.sources = "/posts/:year-:month-:day-:title.html"
end

after_configuration do
  sprockets.append_path Modernizr.path
end

activate :relative_assets
set :relative_links, true

activate :directory_indexes
set :trailing_slash, false

page "/index.html", layout: :application
page "/posts/*", layout: :post

set :haml, format: :html5
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, footnotes: true, autolink: true

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
end
