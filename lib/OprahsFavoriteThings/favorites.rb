require 'pry'

class OprahsFavoriteThings::Favorites
    attr_accessor :favorites, :title, :description, :price, :image, :retailer, :url

    @@all = []


  def self.all
    @@all
  end


  def doc
      @doc  ||= Nokogiri::HTML(open(self.url)) #doc variable is equivalent to HTML string Nokogiri retrieves
  end

  def initialize(favorites = nil, title = nil, description = nil, price = nil, image = nil, retailer = nil, url = nil)
      @favorites = favorites
      @title = title
      @description = description
      @price = price
      @image = image
      @retailer = retailer
      @url = url

      @@all << self
  end


  def self.find_by_name(favorites)
    self.all.find do |favorites|
      self.favorite == favorite
      end
  end


end
