module RssNewsBrasil
  class Item
    attr_reader :title, :link

    def initialize(title = "", link = "")
      @title = title
      @link = link
    end
  end
end
