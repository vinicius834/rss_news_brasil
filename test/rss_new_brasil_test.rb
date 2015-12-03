require "test_helper"

describe RssNewsBrasil do
  describe "get available feeds" do
    it "must return list with available feeds" do
      available_feeds = RssNewsBrasil.available_feeds
      available_feeds.wont_be_empty
      available_feeds[:g1][:name]. must_equal "G1"
    end
  end

  describe "latest_news" do
    it "must return the G1 latest news" do
      news = RssNewsBrasil.latest_news :g1
      news.items.wont_be_empty
      news.title.must_equal "G1"
      news.items[0].title.wont_be_empty
    end

    it "must return the BBC Brasil feed" do
      news = RssNewsBrasil.latest_news :bbc_brasil
      news.items.wont_be_empty
      news.title.must_equal "BBC Brasil"
      news.items[0].title.wont_be_empty
    end
  end
end
