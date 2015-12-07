require "test_helper"

describe RssNewsBrasil do
  before do
    @feeds = RssNewsBrasil::Feeds
  end

  describe "available_feeds" do
    it "must return list with available feeds" do
      available_feeds = RssNewsBrasil.available_feeds
      available_feeds.wont_be_empty
      available_feeds[:g1][:name]. must_equal "G1"
    end
  end

  describe "available_categories" do
    it "must return list with available feeds" do
      available_categories = RssNewsBrasil.available_categories
      available_categories.wont_be_empty
    end
  end

  describe "latest_news" do
    it "must return the G1 latest news" do
      news = RssNewsBrasil.latest_news :g1
      news.items.wont_be_empty
      news.title.must_equal "G1"
      news.items[0].title.wont_be_empty
    end

    it "must return the BBC Brasil latest news feed" do
      news = RssNewsBrasil.latest_news :bbc_brasil
      news.items.wont_be_empty
      news.title.must_equal "BBC Brasil"
      news.items[0].title.wont_be_empty
    end
  end

  describe "news_from_and_category" do
    it "must return the news by source and category" do
      from = @feeds.available_feeds.keys[0]
      category = @feeds.available_feeds_categories_from(from).keys[0]
      news = RssNewsBrasil.news_from_and_category(from, category)
      news.items.wont_be_empty
      news.items[0].title.wont_be_empty
    end
  end

  describe "available_feeds_by_category" do
    it "must return a list with news" do
      categories = RssNewsBrasil::Feeds.available_categories
      feeds_availables = RssNewsBrasil.available_feeds_by_category categories.keys[0]
      feeds_availables.must_be_kind_of Hash
      feeds_availables.wont_be_empty
    end
  end
end
