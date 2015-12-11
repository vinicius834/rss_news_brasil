require "test_helper"

describe RssNewsBrasil::Atom do
  before do
    url = "http://www.bbc.com/portuguese/topicos/brasil/index.xml"
    @atom_feed = RSS::Parser.parse(url, false)
    @atom = RssNewsBrasil::Atom.new(@atom_feed)
  end

  describe "title" do
    it "return the name of feeds author" do
      @atom.title.must_be_kind_of String
      @atom.title.wont_be_empty
      @atom.title.must_equal @atom_feed.title.content
    end
  end

  describe "description" do
    it "return the description of feeds author" do
      @atom.description.must_be_kind_of String
    end
  end

  describe "link" do
    it "return the link" do
      @atom.link.must_be_kind_of String
      @atom.link.wont_be_empty
      @atom.link.must_equal @atom_feed.link.href
    end
  end

  describe "image_url" do
    it "return the image url of the feed" do
      @atom.image_url.must_be_kind_of String
      @atom.image_url.must_equal @atom_feed.logo.content
    end
  end

  describe "last_build_date" do
    it "return the the last build date" do
      @atom.last_build_date.must_be_kind_of Time
      @atom.last_build_date.must_equal @atom_feed.updated.content
    end
  end

  describe "items" do
    it "return feeds items" do
      @atom.items.must_be_kind_of Array
      @atom.items.wont_be_empty
    end
  end
end
