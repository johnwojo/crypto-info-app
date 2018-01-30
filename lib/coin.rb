require_relative ('./scraper.rb')



class Coin
  attr_accessor :name, :market_cap, :price, :daily_volume, :circulating_supply, :daily_change, :number
  @@all = []

  def initialize
    @name = name
    @market_cap = market_cap
    @price = price
    @daily_volume = daily_volume
    @circulating_supply = circulating_supply
    @daily_change = daily_change
    @number = number
    @@all << self
  end
end
