# RssNewsBrasil

RssNewsBrasil is a gem that brings together news feeds of Brazilian news websites.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rss_news_brasil'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rss_news_brasil

## Usage
To get a list from news websites available:

```ruby
require 'rss_news_brasil'

RssNewsBrasil.available_feeds # => {:bbc_brasil=>"BBC Brasil", :correio_brasiliense=>"Correio Brasiliense", :carta_capital=>"Carta Capital", :correio_do_brasil=>"Correio do Brasil" ...}
```

To get latest news:

```ruby
g1_latest_news = RssNewsBrasil.latest_news(:g1)
g1_latest_news.items[1] # => #<RssNewsBrasil::Item:0x007ffa5a63b9b8 @title="Professor da Univasf fala de agressão em debate sobre racismo na UPE", @link="http://g1.globo.com/pe/petrolina-regiao/noticia/2015/12/professor-da-univasf-fala-de-agressao-em-debate-sobre-racismo-na-upe.html">

item = g1_latest_news.items[1]
item.title # => "Professor da Univasf fala de agressão em debate sobre racismo na UPE"
item.link # => "http://g1.globo.com/pe/petrolina-regiao/noticia/2015/12/professor-da-univasf-fala-de-agressao-em-debate-sobre-racismo-na-upe.html"

```

## License
The MIT License (MIT)

Copyright (c) 2015 Vinicius Barbosa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



## Contributing

1. Fork the repository on Github
2. Create your feature branch (`new-feature`)
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request
