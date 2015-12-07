module RssNewsBrasil
  class Atom
    def initialize(atom)
      @atom = atom
    end

    def author
      @atom.author.name.content
    end

    def items
      items = @atom.items.map { |element| item = Item.new(item_title(element), item_link(element), item_update(element)) }
      items
    end

    private

    def item_update(item)
      item.published.content
    end

    def item_title(item)
      item.title.content
    end

    def item_link(item)
      item.link.href
    end
  end
end
