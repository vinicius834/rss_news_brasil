module RssNewsBrasil
  class News
    attr_reader :items, :title, :last_update

    def initialize(items=[], title="", last_update="")
      @items = items
      @title = title
      @last_update = last_update
    end
  end
end
