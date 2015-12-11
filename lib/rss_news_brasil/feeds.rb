module RssNewsBrasil
  module Feeds
    class << self
      @@news_websites = {
        bbc_brasil: { name: "BBC Brasil" },
        carta_capital: { name:"Carta Capital" },
        correio_brasiliense: { name: "Correio Brasiliense" },
        el_pais_brasil: { name: "El País - Brasil" },
        epoca: { name: "Época" },
        exame: { name: "Exame" },
        extra: { name: "Extra" },
        folha: { name: "Folha" },
        g1: { name: "G1" },
        istoe: { name: "Istoé" },
        jornal_do_brasil: { name: "Jornal do Brasil" },
        r7: { name: "R7" },
        uol: { name: "UOL" },
        veja: { name: "VEJA" },
        zero_hora: { name: "Zero Hora" }
      }

      @@categories = {
        brasil: "Brasil",
        culture: " Cultura",
        economy: "Economia",
        education: "Educação",
        health: "Saúde",
        latest_news: "Últimas Notícias",
        music: "Música",
        technology: "Tecnologia",
        world: "Mundo"
      }

      @@available_feeds = {
        bbc_brasil: {
          brasil: { url: "http://www.bbc.com/portuguese/topicos/brasil/index.xml" },
          culture: { url: "http://www.bbc.com/portuguese/topicos/cultura/index.xml" },
          economy: { url: "http://www.bbc.com/portuguese/topicos/economia/index.xml" },
          health: { url: "http://www.bbc.com/portuguese/topicos/saude/index.xml" },
          latest_news: { url:  "http://www.bbc.com/portuguese/index.xml" },
          technology: { url: "http://www.bbc.com/portuguese/topicos/ciencia_e_tecnologia/index.xml" },
          world: { url: "http://www.bbc.com/portuguese/topicos/internacional/index.xml" }
        },
        carta_capital: {
          culture: { url: "http://www.cartacapital.com.br/cultura/cultura/atom.xml" },
          economy: { url: "http://www.cartacapital.com.br/economia/economia/atom.xml" },
          education: { url: "http://www.cartacapital.com.br/educacao/educacao/atom.xml" },
          health: { url: "http://www.cartacapital.com.br/saude/saude/atom.xml" },
          latest_news: { url: "http://www.cartacapital.com.br/atom.xml" },
          technology: { url: "http://www.cartacapital.com.br/tecnologia/tecnologia/atom.xml" },
          world: { url: "http://www.cartacapital.com.br/internacional/internacional/atom.xml" }
        },
        correio_brasiliense: {
          brasil: { url: "http://www.correiobraziliense.com.br/rss/noticia/brasil/rss.xml" },
          culture: { url: "http://www.correiobraziliense.com.br/rss/noticia/eu-estudante/cultura/rss.xml" },
          economy: { url: "http://www.correiobraziliense.com.br/rss/noticia/economia/rss.xml" },
          health: { url: "http://www.correiobraziliense.com.br/rss/noticia/ciencia-e-saude/rss.xml" },
          latest_news: { url: "http://www.correiobraziliense.com.br/rss/noticia/eu-estudante/ultimasnoticias_geral/rss.xml" },
          technology: { url: "http://www.correiobraziliense.com.br/rss/noticia/tecnologia/rss.xml" }
        },
        el_pais_brasil: {
          brasil: { url: "http://brasil.elpais.com/seccion/rss/politica/" },
          culture: { url: "http://brasil.elpais.com/seccion/rss/cultura/" },
          economy: { url: "http://brasil.elpais.com/seccion/rss/economia/" },
          latest_news: { url: "http://brasil.elpais.com/rss/brasil/portada.xml" },
          technology: { url: "http://brasil.elpais.com/seccion/rss/tecnologia/" },
          world: { url: "http://brasil.elpais.com/seccion/rss/internacional/" }
        },
        epoca: {
          latest_news: { url: "http://epoca.globo.com/rss/ultimas/feed.xml" }
        },
        exame: {
          economy: { url: "http://feeds.feedburner.com/Exame-Economia?format=xml" },
          latest_news: { url: "http://feeds.feedburner.com/EXAME-Noticias?format=xml" }
        },
        extra: {
          brasil: { url: "http://extra.globo.com/noticias/brasil/rss.xml" },
          economy: { url: "http://extra.globo.com/noticias/economia/rss.xml" },
          education: { url: "http://extra.globo.com/noticias/educacao/rss.xml" },
          health: { url: "http://extra.globo.com/noticias/saude-e-ciencia/rss.xml" },
          latest_news: { url: "http://extra.globo.com/rss.xml" },
          music: { url: "http://extra.globo.com/tv-e-lazer/musica/rss.xml" },
          technology: { url: "http://extra.globo.com/noticias/celular-e-tecnologia/rss.xml" },
          world: { url: "http://extra.globo.com/noticias/mundo/rss.xml" }
        },
        folha: {
          economy: { url: "http://feeds.folha.uol.com.br/mercado/rss091.xml" },
          education: { url: "http://feeds.folha.uol.com.br/educacao/rss091.xml" },
          latest_news: { url: "http://feeds.folha.uol.com.br/emcimadahora/rss091.xml" },
          technology: { url: "http://feeds.folha.uol.com.br/tec/rss091.xml" },
          world: { url: "http://feeds.folha.uol.com.br/mundo/rss091.xml" }
        },
        g1: {
          brasil: { url: "http://g1.globo.com/dynamo/brasil/rss2.xml" },
          culture: { url: "http://g1.globo.com/dynamo/pop-arte/rss2.xml" },
          economy: { url: "http://g1.globo.com/dynamo/economia/rss2.xml" },
          education: { url: "http://g1.globo.com/dynamo/educacao/rss2.xml" },
          health: { url: "http://g1.globo.com/dynamo/ciencia-e-saude/rss2.xml" }, 
          latest_news: { url: "http://g1.globo.com/dynamo/rss2.xml" },
          music: { url: "http://g1.globo.com/dynamo/musica/rss2.xml" },
          technology: { url: "http://g1.globo.com/dynamo/tecnologia/rss2.xml" },
          world: { url: "http://g1.globo.com/dynamo/mundo/rss2.xml" }
        },
        istoe: {
          brasil: {  url: "http://istoe.feedsportal.com/c/34268/f/623407/index.rss" },
          culture: { url: "http://istoe.feedsportal.com/c/34268/f/623422/index.rss" },
          economy: { url: "http://istoe.feedsportal.com/c/34268/f/623417/index.rss" },
          health: { url: "http://istoe.feedsportal.com/c/34268/f/623414/index.rss" },
          latest_news: { url: "http://istoe.feedsportal.com/c/34268/f/623404/index.rss" },
          technology: { url: "http://istoe.feedsportal.com/c/34268/f/623421/index.rss" },
          world: { url: "http://istoe.feedsportal.com/c/34268/f/623418/index.rss" }

        },
        jornal_do_brasil: {
          brasil: { url: "http://www.jb.com.br/pais/noticias/rss.xml" },
          economy: { url: "http://www.jb.com.br/economia/noticias/rss.xml" },
          latest_news: { url: "http://www.jb.com.br/noticias/rss.xml" }
        },
        r7: {
          economy: { url: "http://noticias.r7.com/economia/feed.xml" },
          brasil: { url: "http://noticias.r7.com/brasil/feed.xml" }
        },
        uol: {
          economy: { url: "http://rss.uol.com.br/feed/economia.xml" },
          latest_news: { url: "http://rss.uol.com.br/feed/noticias.xml" }
        },
        veja: {
          latest_news: { url: "http://feeds.feedburner.com/noticiasveja?format=xml" }
        },
        zero_hora: {
          economy: { url: "http://zh.clicrbs.com.br/rs/noticias/economia/ultimas-noticias-rss/" },
          latest_news: { url: "http://zh.clicrbs.com.br/rs/ultimas-noticias-rss/" }
        }
      }.freeze

      def available_news_websites
        @@news_websites
      end

      def available_categories
        @@categories
      end

      def available_feeds
        @@available_feeds
      end

      def get_availables_feeds_from(from)
        available_feeds[from]
      end

      def get_url_feed_from_by_category(from, category)
        feed_from = available_feeds[from]
        category_from = feed_from[category]
        get_url category_from
      end

      def get_feeds_by_category(category)
        feeds_category = available_feeds.select { |feed| get_availables_feeds_from(feed).key? category }
          .map { |from, url| { from => { category => url[category] } } }
      end

      private
      def get_url(feed)
        feed[:url]
      end
    end
  end
end
