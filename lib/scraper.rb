require_relative ('./coin.rb')
require 'nokogiri'
require 'open-uri'


class Scraper

  def scrape_from_coinmarketcap(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)

  end

end
