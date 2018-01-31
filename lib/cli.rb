require_relative "../lib/environment.rb"
require 'nokogiri'


class CommandLineInteface

  def run
    welcome
    request
    more_info
  end

  def welcome
    puts "Hello there. Welcome to the CoinMarketCap scraper."
    puts "Here you will learn about the top 100 Cryptocurrencies currently in circulation."
    puts "Which list would you like to see? For 1-10, enter 1."
    puts "For 11-20, enter 11. For 21-30, enter 21. Etc."
    puts "Otherwise, just type 'Exit.'"
  end

  def request
    input = gets.strip.to_i
    if input > 0 && input < 101
      puts "Here are coins #{input} - #{input+9}."
    elsif input.downcase != "exit"
      puts "Invalid input. Try again. Enter 1,11,21,31,etc.."
    elsif input.downcase == "exit"
      puts "Thanks for using the CoinMarketCap scraper. Have a cryptoriffic day."
      puts "Don't forget to HODL!"
    end
  end

  def more_info
    puts "Which coin do you want to know more about? 1-100."
    input = gets.strip
    if input.to_i > 0 && input.to_i < 101
      coin_list = Scraper.new
      coin_list.list("1")
      #puts "Oh! Coin number #{input}? Great choice."
      #coin_scraper = Scraper.new("name")
      #puts coin_scraper.name
    #  coin_scraper.scrape_page("http://www.CoinMarketCap.com")
    else
      puts "Please enter a number 1-100."
    # @@all.each do |coin|
  #    if coin.number == input
  #      puts coin.name
  #    end
  #  end
  #This should give more details about a specific coin. Take the number, look through the mega list of 1-100
  # spit out information about the coin in question.
    end
  end
end
