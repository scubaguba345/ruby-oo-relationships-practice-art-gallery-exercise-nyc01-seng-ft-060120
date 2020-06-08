require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'
require_relative '../app/models/donor.rb'


mr_krabs = Donor.new("mr_krabs", 2000)
spongebob = Donor.new("spongebob", 5100)

max = Artist.new("max", 3032, mr_krabs)
joe = Artist.new("joe", 440, spongebob)
jeff = Artist.new("jeff", 2430, spongebob)



# my_gallery = Gallery.new("my_gallery", "stony_point")



# mona_lisa= Painting.new("mona_lisa", 60, max, my_gallery)


# class Donor

#     attr_reader :name, :amount

#     @@all = []

#     def initialize(name, amount)
#         @name = name
#         @amount = amount
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def artists
#         artist.map {|artist| artist.name}.uniq
#         binding.pry
#     end



# end


binding.pry
    puts "Hello"
