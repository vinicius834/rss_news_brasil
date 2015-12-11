require "test_helper"

describe RssNewsBrasil do
  before do
    @feeds = RssNewsBrasil::Feeds
  end

  describe "available_news_websites" do
    it "return a hash with all available websites" do
      available_feeds = RssNewsBrasil.available_news_websites
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "available_feeds" do
    before do
      @feed = @feeds.available_news_websites.keys[0]
    end

    it "must return list with available feeds" do
      available_feeds = RssNewsBrasil.available_feeds
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty

      available_feeds.has_key?(@feed)
    end
  end

  describe "available_categories" do
    it "return a hash with available categories" do
      available_feeds = RssNewsBrasil.available_categories
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "latest_news" do
    before do
      @from = @feeds.get_feeds_by_category(:latest_news).shuffle.at(0).keys[0]
    end

    it "must return the latest news" do
      news = RssNewsBrasil.latest_news @from
      news.items.wont_be_empty
      news.items[0].title.wont_be_empty
    end
  end

  describe "news_from_and_category" do
    before do
      @from = @feeds.available_feeds.keys.shuffle.at(0)
      @category = @feeds.get_availables_feeds_from(@from).keys[0]
    end

    it "must return the news by source and category" do
      news = RssNewsBrasil.news_from_and_category(@from, @category)
      news.items.wont_be_empty
      news.items[0].title.wont_be_empty
    end
  end

  describe "available_feeds_by_category" do
    before do
      @category = @feeds.available_categories.keys.shuffle.at(0)
    end

    it "must return a list with news" do
      available_feeds = RssNewsBrasil.available_feeds_by_category @category
      available_feeds.must_be_kind_of Array
      available_feeds.wont_be_empty
    end
  end
end
