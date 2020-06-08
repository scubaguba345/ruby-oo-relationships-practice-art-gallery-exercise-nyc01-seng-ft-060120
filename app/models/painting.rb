#sst class
class Painting

  attr_reader :title, :price, :artist, :gallery, :donor
  #allows us to read the artist and gallery classes

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @donor = donor
    @@all << self
  end
  #returns an array of all paintings
  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0) {|sum, painting| sum + painting.price}
  end


end
