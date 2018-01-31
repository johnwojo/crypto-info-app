require_relative ('./coin.rb')
require 'nokogiri'
require 'open-uri'


class Scraper

  def scrape(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    puts doc.css('.text-center sorting_1')
  end

end
