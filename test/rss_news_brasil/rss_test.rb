require "test_helper"

describe RssNewsBrasil::Rss do
  before do
    url = "http://g1.globo.com/dynamo/brasil/rss2.xml"
    @rss_feed = RSS::Parser.parse(url, true)
    @rss = RssNewsBrasil::Rss.new(@rss_feed)
  end

  describe "author" do
    it "return the name of feeds author" do
      @rss.author.must_be_kind_of String
      @rss.author.wont_be_empty
      @rss.author.must_equal @rss_feed.channel.title
    end
  end

  describe "items" do
    it "return feeds items" do
      @rss.items.must_be_kind_of Array
      @rss.items.wont_be_empty
    end
  end
end
