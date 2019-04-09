class Bike

  attr_accessor :price, :shop, :brand

  @@all = []

  def initialize
    @brand = brand
    @price = price
    @shop = shop
    @@all << self
  end

  #has a condition status
  # has a type ie: road, mountain, bmx
  # has a price
  # has a model name
  # each bike has a relation to Shop
  # each bike has a relation to Brand
  # has a model year

  #return a list of bikes  that a shop has that are over $n in price.


  #Class Methods
  def self.all
    @@all
  end
end