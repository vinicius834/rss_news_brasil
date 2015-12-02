require "rss_news_brasil/version"
require "rss_news_brasil/feeds"
require "rss_news_brasil/news"
require "rss_news_brasil/item"
require "rss_news_brasil/atom"
require "rss_news_brasil/rss"
require "rss"

module RssNewsBrasil
  class << self
    def latest_news(from)
      url = Feeds::LATEST_NEWS_RSS[from]
      rss = RSS::Parser.parse(url, true)
      create_news_links rss
    end

    def available_feeds
      Feeds::AVAILABLE_FEEDS
    end

    private

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
      items = rss.items
      News.new(items, rss.author, rss.last_update)
    end

    def get_news_from_atom(rss)
      atom = Atom.new(rss)
      items = atom.items
      News.new(items, atom.author, atom.last_update)
    end
  end
end
