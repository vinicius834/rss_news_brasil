module RssNewsBrasil
  class Rss
    def initialize(rss)
      @rss = rss
      @channel = @rss.channel
    end

    def author
      @channel.title
    end

    def items
      items = @rss.items.map { |element| item = Item.new(element.title, element.link) }
      items
    end

    def last_update
      @rss.channel.lastBuildDate
    end
  end
end

