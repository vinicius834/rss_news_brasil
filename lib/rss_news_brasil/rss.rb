module RssNewsBrasil
  class Rss
    attr_reader :title,
                :description,
                :link,
                :image_url,
                :last_build_date,
                :items

    def initialize(rss)
      @rss = rss
      @channel = @rss.channel
      set_required_data
      set_optionals_data
    end

    private
    def set_required_data
      @title = @channel.title ||= ""
      @description = @channel.description ||= ""
      @link = @channel.link ||= ""
      @items = get_items(@channel)
    end

    def set_optionals_data
      @image_url =  get_image_url_from_channel
      @last_build_date = @channel.lastBuildDate ||= ""
    end

    def get_image_url_from_channel
      @channel.image ? @channel.image.url : ""
    end

    def get_items(channel)
       channel.items.map { |element| item = create_item(element)}
    end

    def create_item(item_data)
      title = item_data.title ||= ""
      description = item_data.description ||= ""
      link = item_data.link ||= ""
      pub_date = item_data.pubDate ||= ""
      Item.new(title, description, link, pub_date)
    end
  end
end

