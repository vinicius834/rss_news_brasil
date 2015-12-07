module RssNewsBrasil
  class News
    attr_reader :items, :title

    def initialize(items=[], title="")
      @items = items
      @title = title
    end
  end
end
