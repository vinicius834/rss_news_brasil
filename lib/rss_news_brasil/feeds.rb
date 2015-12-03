module RssNewsBrasil
  module Feeds

    @@categories = {
      economy: "Economia",
      latest_news: "Últimas Notícias"
    }

    @@available_feeds = {
      bbc_brasil: {
        name: "BBC Brasil",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://www.bbc.com/portuguese/topicos/economia/index.xml" },
            latest_news: { name: @@categories[:latest_news], url:  "http://www.bbc.com/portuguese/index.xml"}
          }
        }
      },
      carta_capital: {
        name:"Carta Capital",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://www.cartacapital.com.br/economia/economia/atom.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://www.cartacapital.com.br/atom.xml" }
          }
        }
      },

      correio_brasiliense: {
        name: "Correio Brasiliense",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://www.correiobraziliense.com.br/rss/noticia/economia/rss.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://www.correiobraziliense.com.br/rss/noticia/eu-estudante/ultimasnoticias_geral/rss.xml" }
          }
        }
      },
      correio_do_brasil: {
        name: "Correio do Brasil",
        available_feeds: {
          category: {
            economy: { name:@@categories[:economy], url: "https://rss.ruptly.tv/voiceover/token/cVLOcQ4jRzQU4RFP/brazilian.rss" },
            latest_news: { name: @@categories[:latest_news], url:  "https://rss.ruptly.tv/voiceover/token/cVLOcQ4jRzQU4RFP/brazilian.rss" }
          }
        }
      },
      el_pais_brasil: {
        name: "El País - Brasil",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://brasil.elpais.com/seccion/rss/economia/" },
            latest_news: { name: @@categories[:latest_news], url: "http://brasil.elpais.com/rss/brasil/portada.xml"}
          }
        }
      },
      epoca: {
        name: "Época",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://revistaepoca.globo.com/Revista/Epoca/Rss/0,,DMI0-15210,00.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://revistaepoca.globo.com/Revista/Epoca/Rss/0,,DMI0-15210,00.xml" }
          }
        }
      },
      exame: {
        name: "Exame",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://feeds.feedburner.com/SoEmExame?format=xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://feeds.feedburner.com/SoEmExame?format=xml" }
          }
        }
      },
      extra: {
        name: "Extra",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://extra.globo.com/noticias/economia/rss.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://extra.globo.com/rss.xml"}
          }
        }
      },
      folha: {
        name: "Folha",
        available_feeds: {
          category: { 
            economy: { name: @@categories[:economy], url: "http://feeds.folha.uol.com.br/mercado/rss091.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://feeds.folha.uol.com.br/emcimadahora/rss091.xml" }
          }
        }
      },
      g1: {
        name: "G1",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://g1.globo.com/dynamo/economia/rss2.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://g1.globo.com/dynamo/rss2.xml" }
          }
        }
      },
      istoe: {
        name: "Istoé",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://istoe.feedsportal.com/c/34268/f/623417/index.rss" },
            latest_news: { name: @@categories[:latest_news], url: "http://istoe.feedsportal.com/c/34268/f/623404/index.rss" }
          }
        }
      },
      jornal_do_brasil: {
        name: "Jornal do Brasil",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://www.jb.com.br/economia/noticias/rss.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://www.jb.com.br/noticias/rss.xml" }
          }
        }
      },
      uol: {
        name: "UOL",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://rss.uol.com.br/feed/economia.xml" },
            latest_news: { name: @@categories[:latest_news], url: "http://rss.uol.com.br/feed/noticias.xml" }
          }
        }
      },
      veja: {
        name: "VEJA",
        available_feeds: {
          category: {
            latest_news: { name: @@categories[:latest_news], url: "http://feeds.feedburner.com/noticiasveja?format=xml" }
          }
        }
      },
      zero_hora: {
        name: "Zero Hora",
        available_feeds: {
          category: {
            economy: { name: @@categories[:economy], url: "http://zh.clicrbs.com.br/rs/noticias/economia/ultimas-noticias-rss/" },
            latest_news: { name: @@categories[:latest_news], url: "http://zh.clicrbs.com.br/rs/ultimas-noticias-rss/" }
          }
        }
      }
    }.freeze

    def self.available_categories
      @@categories
    end

    def self.available_feeds
      @@available_feeds
    end

    def self.available_feeds_categories_from(source)
      available_source = available_feeds[source]
      available_source_feeds = available_source[:available_feeds]
      available_source_feeds[:category]
    end

    def self.get_available_feeds_url_by_source_and_category(source, category)
      feeds_sources_available = available_feeds_categories_from(source)
      available_category = feeds_sources_available[category]
      available_category[:url]
    end
  end
end
