class Brand

  @@all = []

  attr_reader :name, :year

  def initialize(name, year)
    @name = name
    @year = year
    @@all << self
  end

  #has a founding year
  #has name, manufacturer id
  #
  # brand chooses price (MSRP)

  def make_bike
    new_bike = Bike.new
    new_bike.brand = self
  end

  def bikes_built
    Bike.all.select { |bike| bike.brand == self }
  end

  def bikes_available
    bikes_built.select { |bike| bike.shop.nil? }
  end

  # def set_invoice_price(price)
  #
  # end
  #
  def self.all
    @@all
  end
end