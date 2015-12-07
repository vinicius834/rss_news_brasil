module RssNewsBrasil
  class Item
    attr_reader :title, :link, :updated
    def initialize(title = "", link = "", updated="")
      @title = title
      @link = link
      @updated = updated
    end
  end
end
