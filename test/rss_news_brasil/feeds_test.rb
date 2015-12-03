require "test_helper"

describe RssNewsBrasil::Feeds do
  before do
    @feeds = RssNewsBrasil::Feeds
    @keys_categories = @feeds.available_categories
  end

  describe "available_feeds" do
    it "return a hash with all websites available feeds" do
      available_feeds = @feeds.available_feeds
      available_feeds.must_be_kind_of Hash
      available_feeds.wont_be_empty
    end
  end

  describe "available_feeds_categories_from" do
    it "return a hash with available feeds categories from VEJA" do

      available_feeds_categories = @feeds.available_feeds_categories_from :veja
      available_feeds_categories.must_be_kind_of Hash
      available_feeds_categories.wont_be_empty
      available_feeds_categories.keys.all? { |category| @keys_categories.key? category }
      available_feeds_categories.has_key?(:any).must_be :==, false
    end

    it "return a hash with available feeds categories from BBC Brasil" do
      available_feeds_categories = @feeds.available_feeds_categories_from :bbc_brasil
      available_feeds_categories.must_be_kind_of Hash
      available_feeds_categories.wont_be_empty
      available_feeds_categories.keys.all? { |category| @keys_categories.key? category }
      available_feeds_categories.has_key?(:any).must_be :==,false
    end
  end

  describe "get_available_feeds_url_by_source_and_category" do
    it "return a hash with available feeds from VEJA" do
      url = @feeds.get_available_feeds_url_by_source_and_category :veja, :latest_news
      url.must_be_kind_of String
      url.wont_be_empty
    end

    it "return a hash with available feeds from BBC Brasil" do
      url = @feeds.get_available_feeds_url_by_source_and_category :bbc_brasil, :latest_news
      url.must_be_kind_of String
      url.wont_be_empty
    end
  end
end
