class Artist

  attr_reader :name, :years_experience, :donor

  @@all = []

  def initialize(name, years_experience, donor)
    @name = name
    @years_experience = years_experience
    @donor = donor
    @@all << self
  end
 
  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  #goes through all the galleries iterating over the galeries the artist has paintings in
  def galleries
    paintings.map {|painting| painting.gallery}
    
  end
  #goes through all cities artist has paintings in
  def cities
    galleries.map do |galleries|
      galleries.city
    end
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist|
      sum + artist.years_experience}
  end

  def self.most_profilic
    self.all.max_by do |artist|
    artist.paintings.length / artist.years_experience
  end
end


  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end

end
