require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


def create_painting(title,price,gallery)
    Painting.new(title, price, self, gallery)
end


binding.pry
    puts "Hello"
