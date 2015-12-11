module RssNewsBrasil
  class Item
    attr_reader :title, :description, :link, :pub_date

    def initialize(title, description, link, pub_date)
      @title = title
      @description = description
      @link = link
      @pub_date = pub_date
    end
  end
end
