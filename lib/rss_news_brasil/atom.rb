module RssNewsBrasil
  class Atom
    attr_reader :title,
                :author,
                :description,
                :link,
                :image_url,
                :last_build_date,
                :items

    def initialize(atom)
      @atom = atom
      set_required_data
      set_optionals_data
    end

    private
    def set_required_data
      @title = @atom.title.content ||= ""
      @last_build_date = @atom.updated.content ||= ""
      @items = get_items
    end

    def set_optionals_data
      @author = @atom.author ? @atom.author.name.content : ""
      @description = @atom.subtitle ? @atom.subtitle.content : ""
      @link = @atom.link ? @atom.link.href : ""
      @image_url = @atom.logo ? @atom.logo.content : ""
    end

    def get_items
       @atom.items.map { |element| item = create_item(element) }
    end

    def create_item(item_data)
      title = item_data.title.content ||= ""
      description = item_data.summary.content ||= ""
      link = item_data.link.href ||= ""
      pub_date = item_data.updated.content ||= ""
      Item.new(title, description, link, pub_date)
    end
  end
end
