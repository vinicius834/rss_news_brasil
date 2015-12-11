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

RssNewsBrasil.available_news_websites
 => # {:bbc_brasil=>{:name=>"BBC Brasil"}, :carta_capital=>{:name=>"Carta Capital"}, :correio_brasiliense=>{:name=>"Correio Brasiliense"}, :el_pais_brasil=>{:name=>"El País - Brasil"}, :epoca=>{:name=>"Época"}, :exame=>{:name=>"Exame"}, :extra=>{:name=>"Extra"}, :folha=>{:name=>"Folha"}, :g1=>{:name=>"G1"}, :istoe=>{:name=>"Istoé"}, :jornal_do_brasil=>{:name=>"Jornal do Brasil"}, :r7=>{:name=>"R7"}, :uol=>{:name=>"UOL"}, :veja=>{:name=>"VEJA"}, :zero_hora=>{:name=>"Zero Hora"}}
```

To get a list from availables news categories:

```ruby
RssNewsBrasil.available_categories
 => # {:brasil=>"Brasil", :culture=>" Cultura", :economy=>"Economia", :education=>"Educação", :health=>"Saúde", :latest_news=>"Últimas Notícias", :music=>"Música", :technology=>"Tecnologia", :world=>"Mundo"}
```


To get latest news:

```ruby
g1_latest_news = RssNewsBrasil.latest_news(:g1)

item = g1_latest_news.items[1]
p item # => #<RssNewsBrasil::Item:0x007fa52a56e330 @title="Trabalhadores são flagrados em situação de escravidão em olarias", @description="<a href='http://g1.globo.com/sp/vale-do-paraiba-regiao/noticia/2015/12/trabalhadores-sao-flagrados-em-situacao-de-escravidao-em-olarias.html' alt='Trabalhadores são flagrados em situação de escravidão em olarias'><img border='0' src='http://s2.glbimg.com/e2ZeIj2mX0VqlK0MPiyiF42jUOo=/90x68/s.glbimg.com/jo/g1/f/original/2015/12/11/olaria_denuncia1.jpg' alt='Trabalhadores são flagrados em situação de escravidão em olarias' title='Trabalhadores são flagrados em situação de escravidão em olarias' /></a><br />Operação do Ministério Público do Trabalho com PRF flagra irregularidades.\nProblemas foram encontrados em duas olarias em Bragança Paulista.", @link="http://g1.globo.com/sp/vale-do-paraiba-regiao/noticia/2015/12/trabalhadores-sao-flagrados-em-situacao-de-escravidao-em-olarias.html", @pub_date=2015-12-11 18:34:19 -0200>

```

To get news by category:

```ruby
news = RssNewsBrasil.news_from_and_category :g1, :brasil

news1 = news.items[1]
p item # => #<RssNewsBrasil::Item:0x007fa52a204668 @title="Policia Civil deflagra operação Proteção Integral no interior do AM", @description="<a href='http://g1.globo.com/am/amazonas/noticia/2015/12/policia-civil-deflagra-operacao-protecao-integral-no-interior-do-am.html' alt='Policia Civil deflagra operação Proteção Integral no interior do AM'><img border='0' src='http://s2.glbimg.com/fYg_KwtzUch7COIQVDm_mIALC3s=/90x68/s.glbimg.com/jo/g1/f/original/2015/12/11/9e4f8ba3-aeba-43d2-914e-5af09710da61.jpg' alt='Policia Civil deflagra operação Proteção Integral no interior do AM' title='Policia Civil deflagra operação Proteção Integral no interior do AM' /></a><br />Ação teve objetivo de reduzir as infrações praticadas por jovens em Urucará.\nCerca de 15 suspeitos foram detidos durante a operação.", @link="http://g1.globo.com/am/amazonas/noticia/2015/12/policia-civil-deflagra-operacao-protecao-integral-no-interior-do-am.html", @pub_date=2015-12-11 18:41:08 -0200>

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
