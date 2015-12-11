require "rss_news_brasil/version"
require "rss_news_brasil/feeds"
require "rss_news_brasil/news"
require "rss_news_brasil/item"
require "rss_news_brasil/atom"
require "rss_news_brasil/rss"
require "rss"

module RssNewsBrasil
  class << self
    def available_news_websites
      Feeds.available_news_websites
    end

    def available_feeds
      Feeds.available_feeds
    end

    def available_categories
      Feeds.available_categories
    end

    def available_feeds_by_category(category)
      Feeds.get_feeds_by_category(category)
    end

    def latest_news(from)
      url = Feeds.get_url_feed_from_by_category(from, :latest_news)
      response = parse_feed(url)
      create_news_links response
    end

    def news_from_and_category(from, category)
      url = Feeds.get_url_feed_from_by_category(from, category)
      response = parse_feed(url)
      create_news_links response
    end

    private
    def parse_feed(url)
      RSS::Parser.parse(url, false)
    end

    def create_news_links(rss)
      case rss.feed_type
        when "rss"
          get_news_from_rss rss
        when "atom"
          get_news_from_atom rss
      end
    end

    def get_news_from_rss(rss)
      rss = Rss.new(rss)
      create_news rss
    end

    def get_news_from_atom(rss)
      atom = Atom.new(rss)
      create_news atom
    end

    def create_news(data)
      News.new(data.items, data.title, data.description, data.link, data.last_build_date, data.image_url)
    end
  end
end
