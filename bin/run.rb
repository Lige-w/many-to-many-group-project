require 'pry'

require_relative '../lib/bike'
require_relative '../lib/brand'
require_relative '../lib/shop'



shop1 = Shop.new("Fresh Bikes", 1990)
brand1 = Brand.new("Trek", 1974)

brand1.make_bike

puts "~does trek have a bike built?~"
puts brand1.bikes_built.length == 1 #true
puts "---"
puts "does trek have one bike for sale?"
puts brand1.bikes_available.length == 1 #true
puts "---"
puts "is there one instance of bike?"
puts Bike.all.length == 1 #true
puts "---"
puts"is the bikes brand brand1"
puts Bike.all[0].brand == brand1
puts"---"

#buy a bike

shop1.buy_bike(brand1, 0)

puts "is the bike owned by the shop"
puts Bike.all[0].shop == shop1 #true
puts "---"
puts "does shop1 own one bike?"
puts shop1.bikes_owned.length == 1
puts "---"
puts "is the bike no longer for sale by brand1?"
puts brand1.bikes_available.length == 0
puts "---"
puts "does shop1 own bikes from brand 1?"
puts shop1.brands_owned.include?(brand1)

