module RssNewsBrasil
  class Atom
    def initialize(rss)
      @rss = rss
    end

    def author
      @rss.author.name.content
    end

    def items
      items = @rss.items.map { |element| item = Item.new(item_title(element), item_link(element)) }
      items
    end

    def last_update
      @rss.updated.content
    end

    private
    def item_title(item)
      item.title.content
    end

    def item_link(item)
      item.link.href
    end
  end
end
