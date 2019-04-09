class Shop

  attr_reader :name, :year, :bikes

  @@all = []

  def initialize(name, year)
    @name
    @year
    @@all << self
  end
  #has a founding year

  #can purchase from brands
  # can sell to customers
  # can repair bikes:
  #   If conditidtion is bad, repair bike
  #   else if condition is unrepairable, return
  #
  # Shop can change price (ie. put bike on sale)

  def buy_bike(brand, index)
    new_bike = brand.bikes_available[index]
    # binding.pry
    new_bike.shop = self
  end

  def bikes_owned
    Bike.all.select { |bike| bike.shop == self }
  end

  def brands_owned
    bikes_owned.map { |bike| bike.brand }.uniq
  end

  # def sell_bike()
  #
  # end
  #
  #  def set_wholesale_price(index, price)
  #    bike.price = price
  #  end
  #
  # def set_sale_price(price)
  #
  # end

  #Class Methods
  def self.all
    @@all
  end

end