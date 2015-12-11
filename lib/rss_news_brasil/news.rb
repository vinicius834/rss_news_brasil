module RssNewsBrasil
  class News
    attr_reader :items,
                :title,
                :description,
                :link,
                :last_build_date,
                :image_url

    def initialize(items, title, description, link, last_build_date, image_url)
      @items = items
      @title = title
      @description = description
      @link = link
      @last_build_date = last_build_date
      @image_url = image_url
    end
  end
end
