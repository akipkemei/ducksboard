module Ducksboard
  class Timeline < Widget

    ICONS = {
      :orange  => "https://app.ducksboard.com/static/img/timeline/orange.gif",
      :red     => "https://app.ducksboard.com/static/img/timeline/red.gif",
      :green   => "https://app.ducksboard.com/static/img/timeline/green.gif",
      :created => "https://app.ducksboard.com/static/img/timeline/created.png",
      :edited  => "https://app.ducksboard.com/static/img/timeline/edited.png",
      :deleted => "https://app.ducksboard.com/static/img/timeline/deleted.png"
    }

    def initialize(*args)
      super
      @data[:value] ||={}
    end

    def title; @data[:title] end
    def image; @data[:image] end
    def content; @data[:image] end
    def link; @data[:image] end

    def title=(text)
      @data[:value][:title] = text
    end

    def image=(url)
      @data[:value][:image] = if url =~ /^http/
        url
      else
        ICONS[url.to_sym]
      end
    end

    def content=(text)
      @data[:value][:content] = text
    end

    def link=(url)
      @data[:value][:link] = url
    end
  end
end
