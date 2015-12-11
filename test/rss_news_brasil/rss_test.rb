require "test_helper"

describe RssNewsBrasil::Rss do
  before do
    url = "http://extra.globo.com/rss.xml"
    @rss_feed = RSS::Parser.parse(url, false)
    @rss = RssNewsBrasil::Rss.new(@rss_feed)
  end

  describe "title" do
    it "return the name of feeds author" do
      @rss.title.must_be_kind_of String
      @rss.title.wont_be_empty
      @rss.title.must_equal @rss_feed.channel.title
    end
  end

  describe "description" do
    it "return the description of feeds author" do
      @rss.description.must_be_kind_of String
      @rss.description.must_equal @rss_feed.channel.description
    end
  end

  describe "link" do
    it "return the link" do
      @rss.link.must_be_kind_of String
      @rss.link.wont_be_empty
      @rss.link.must_equal @rss_feed.channel.link
    end
  end

  describe "image_url" do
    it "return the image url of the feed" do
      @rss.image_url.must_be_kind_of String
      @rss.image_url.must_equal @rss_feed.channel.image.url
    end
  end

  describe "last_build_date" do
    it "return the the last build date" do
      @rss.last_build_date.must_be_kind_of Time
      @rss.last_build_date.must_equal @rss_feed.channel.lastBuildDate
    end
  end

  describe "items" do
    it "return feeds items" do
      @rss.items.must_be_kind_of Array
      @rss.items.wont_be_empty
    end
  end
end
