require 'pry'

class OprahsFavoriteThings::Favorites
    attr_accessor :url

    #@@all = []


  def self.all
    self.new.products
    #@@all
  end

  def self.find_by_name(title)
    self.all.find do |product|
      product.title ===title
    end
  end


  def initialize
    @url = "https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
  end

  def doc
      @doc  ||= Nokogiri::HTML(open(self.url)) #doc variable is equivalent to HTML string Nokogiri retrieves
  end


#
#   def self.find_by_name(favorites)
#     self.all.find do |favorites|
#       self.favorite == favorite
#       end
#   end
#
#
end
