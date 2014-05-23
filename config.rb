activate :automatic_image_sizes
activate :directory_indexes
activate :livereload
activate :minify_html

set :relative_links, true

# Methods defined in the helpers block are available in templates
helpers do
  def is_page_active(page)
    current_page.url == page ? {:class => 'is-active'} : {}  
  end

  def get_pages
    sitemap.resources.select{ |resource| resource.data.type == 'page' }
      .sort_by { |r| r.data.priority.to_i }
  end
end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

# Markdown configuration
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, footnotes: true, smartypants: true, tables: true

# Syntax Highlighting
activate :syntax, :line_numbers => true