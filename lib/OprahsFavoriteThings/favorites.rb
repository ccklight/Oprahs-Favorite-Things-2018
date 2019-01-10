require 'pry'

class OprahsFavoriteThings::Favorites
    attr_accessor :favorites, :title, :description, :price, :image, :retailer

    @@all = []


  def self.all
    @@all
  end


  def doc
      @doc  ||= Nokogiri::HTML(open(self.url)) #doc variable is equivalent to HTML string Nokogiri retrieves
  end


  # def start
  #   puts "Hello World from favorites"
  # end

  def initialize(favorites = nil, title = nil, description = nil, price = nil, image = nil, retailer = nil, url = nil)

    @@all << self
  end



  #   @favorites = favorites
  #   @title = title
  #   @description = description
  #   @cost = cost
  #   @image = image
  #   @retailer = retailer
  #   @url = url
  #   @@all << self
  # end


#   def self.find_by_name(favorites)
#     self.all.find do |favorites|
#       self.favorite == favorite
#       end
#   end

#
 end
