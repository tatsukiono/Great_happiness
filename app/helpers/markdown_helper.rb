require 'rouge/plugins/redcarpet'

class HTML < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end

module MarkdownHelper
  def markdown(text)
    options = {
      no_images:     true,
      no_styles:     true,
      with_toc_data: true,
      hard_wrap:     true
    }

    extensions = {
      no_intra_emphasis:   true,
      tables:              true,
      fenced_code_blocks:  true,
      autolink:            true,
      lax_spacing:         true,
      space_after_headers: true
    }

    unless @markdown
      # Redcarpet::Render::HTML => HTML に変更
      renderer = HTML.new(options)
      @markdown = Redcarpet::Markdown.new(renderer, extensions)
    end

    @markdown.render(text).html_safe
  end

  def toc(text)
    toc_option = {
      nesting_level: 1
    }

    toc_renderer = Redcarpet::Render::HTML_TOC.new
    toc = Redcarpet::Markdown.new(toc_renderer, toc_option)
    toc.render(text).html_safe
  end
end