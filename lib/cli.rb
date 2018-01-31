require_relative "../lib/scraper.rb"
require_relative "../lib/coin.rb"
require 'nokogiri'


class CommandLineInteface

  def run
    welcome
    request
  end

  def welcome
    puts "Hello there. Welcome to the CoinMarketCap scraper."
    sleep(1)
    puts "Here you will learn about the top 100 Cryptocurrencies currently in circulation."
    sleep(1)
    puts "Which list would you like to see? For 1-10, enter 1."
    sleep(1)
    puts "For 11-20, enter 11. For 21-30, enter 21. Etc."
    sleep(1)
    puts "Otherwise, just type 'Exit.'"
  end

  def request
    input = nil
    while input != "exit"
    input = gets.strip
      if input.to_i == 1
        puts "Here are coins 1-10."
        more_info
      elsif input.to_i == 11
        puts "Here are coins 11-20."
        more_info
      elsif input.to_i == 21
        puts "Here are coins 21-30."
        more_info
      elsif input.to_i == 31
        puts "Here are coins 31-40."
        more_info
      elsif input.to_i == 41
        puts "Here are coins 41-50."
        more_info
      elsif input.to_i == 51
        puts "Here are coins 51-60."
        more_info
      elsif input.to_i == 61
        puts "Here are coins 61-70."
        more_info
      elsif input.to_i == 71
        puts "Here are coins 71-80."
        more_info
      elsif input.to_i == 81
        puts "Here are coins 81-90."
        more_info
      elsif input.to_i == 91
        puts "Here are coins 91-100."
        more_info
      elsif input.downcase != "exit"
        puts "Invalid input. Try again. Enter 1,11,21,31,etc.."
      elsif input.downcase == "exit"
        puts "Thanks for using the CoinMarketCap scraper. Have a cryptoriffic day."
        puts "Don't forget to HODL!"
      end
    end
  end

  def list
    # This should create a list of the coins that the user has requested. So if the user entered
    # 1, then it should initialize a scraper, gather information about coins 1-10 from the site,
    # then create coin objects that have been mass assigned information.
  end

  def more_info
    puts "Which coin do you want to know more about? 1-100."
    input = gets.strip
    puts "Oh! Coin number #{input}? Great choice."
    scraper('http://www.coinmarketcap.com')
    # @@all.each do |coin|
  #    if coin.number == input
  #      puts coin.name
  #    end
  #  end
  #This should give more details about a specific coin. Take the number, look through the mega list of 1-100
  # spit out information about the coin in question.
  end
end
