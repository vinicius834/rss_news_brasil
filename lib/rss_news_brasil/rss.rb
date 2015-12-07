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
      items = @rss.items.map { |element| item = Item.new(element.title, element.link, element.pubDate) }
      items
    end
  end
end

