require "test_helper"

describe RssNewsBrasil::Atom do
  before do
    url = "http://www.bbc.com/portuguese/topicos/brasil/index.xml"
    @atom_feed = RSS::Parser.parse(url, true)
    @atom = RssNewsBrasil::Atom.new(@atom_feed)
  end

  describe "author" do
    it "return the name of feeds author" do
      @atom.author.must_be_kind_of String
      @atom.author.wont_be_empty
      @atom.author.must_equal @atom_feed.author.name.content
    end
  end

  describe "items" do
    it "return feeds items" do
      @atom.items.must_be_kind_of Array
      @atom.items.wont_be_empty
    end
  end
end
