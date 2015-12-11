require "test_helper"

describe RssNewsBrasil::Feeds do
  before do
    @feeds = RssNewsBrasil::Feeds
    @keys_categories = @feeds.available_categories
  end

  describe "available_news_websites" do
    it "return a hash with all available websites" do
      available_feeds = @feeds.available_news_websites
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "available_categories" do
    it "return a hash with available categories" do
      available_feeds = @feeds.available_categories
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "available_feeds" do
    it "return a hash with all websites available feeds" do
      available_feeds = @feeds.available_feeds
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "get_availables_feeds_from" do
    it "return a hash with all available feeds" do
      from = @feeds.available_news_websites.keys[0]
      available_feeds = @feeds.get_availables_feeds_from from
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
      available_feeds.keys.all? { |category| @keys_categories.key? category }
    end
  end

  describe "get_url_feed_from_by_category" do
    it "return url from the feed" do
      from = @feeds.available_news_websites.keys[0]
      category = @feeds.available_feeds[from].keys[0]
      url = @feeds.get_url_feed_from_by_category(from, category)
      url.must_be_kind_of String
      url.wont_be_empty
    end
  end

  describe "get_feeds_by_category" do
    it "return list of feeds by category" do
      category = @feeds.available_categories.keys[0]
      feeds_by_category = @feeds.get_feeds_by_category(category)
      feeds_by_category.must_be_kind_of Array
      feeds_by_category.wont_be_empty
    end
  end

end
