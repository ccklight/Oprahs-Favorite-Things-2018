require 'pry'

class OprahsFavoriteThings::Favorites
    attr_accessor :products

  def start
    puts "Hello World from favorites"
  end

  def initialize(products)
    @products = products

  end
#   attr_accessors :title, :description, :cost, :image, :retailer # these are the five attributes to be extracted from site
#
#   @@all - [] # empty array in which to place the favorites
#
#
#   def self.new_from_index_page(favorites) #define each word to avoid 'no method error'
#     self = OprahsFavoriteThings(favorites) # the self is the class of favorites
#     new = index.new  # the word new means each new individual favorite item
#     new_from_index_page = favorites.new # this shows what each new item is
#
#     @index = index(index) # each index item is equivalent to each item pulled from the index to be scraped
#     @list = list(favorites) # the instance of the list is equivalent to the list which has each favorite passed in
#     list == [] && list == [description[0], cost[1], retailer[2]) # list is comprised of 3 things in first,second,third positions
#
#     list << favorites_from_index(favorites) # the list will have each favorite pulled from the index shoveled in
#
#     self << favorite # each favorite is also passed into the class
#     self.new # each instance will be returned and placed into the empty array
#
#   end
#
#
#
#   def initialize(favorites = nil, title = nil, description = nil, cost = nil, image = nil, retailer = nil, url = nil)
#     @favorites = favorites
#     @title = title
#     @description = description
#     @cost = cost
#     @image = image
#     @retailer = retailer
#     @url = url
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#
#   def self.find_by_name(favorites)
#     self.all.find do |favorites|
#       self.favorite == favorite
#       end
#   end
#
#
#   def website_url
#     website_url = website.url # Establish that the website is the website
#     website.url = https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654 # the website url
#   end
#
# binding.pry
#
#
#   def doc
#     @doc  ||= Nokogiri::HTML(open(self.url)) #doc variable is equivalent to HTML string Nokogiri retrieves
#   end
#
 end
