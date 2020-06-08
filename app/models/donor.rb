# #Artist now has a Donor
# Donor has a name and an amount
# Artist should know their Donor's name and amount 
# Donor should know all their Artists' names (the list should not have a duplicate name if they've donated to the same artist twice)

class Donor

    attr_reader :name, :amount

    @@all = []

    def initialize(name, amount)
        @name = name
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end

    def artists
        Artist.all.select {|artist| artist.donor == self} #array of objects
    end

    def artists_name
        artists.map {|artist| artist.name}.uniq #array of strings
    end



end
