require 'pry'

class OprahsFavoriteThings::Favorites
  attr_accessor  :title, :description, :price, :image, :retailer, :url


  def self.all
    self.new.favorites
  end


  def self.find_by_name (title)
    self.all.find do |favorite|
      favorite.title === title
      end
  end


  def initialize
    @url = "https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
  end


  def favorites
    if @favorites
       @favorites
        end

    @favorites = []

    doc.css('div.listicleProduct').each do |div|
      favorite = OprahsFavoriteThings::Favorite.new
      favorite.price = div.css('span[class*=price]').text
      favorite.title = div.css('h2').text
      favorite.description = div.css('+ p').text
      favorite.image = div.css('img')[0][:src]
      favorite.retailer = div.css('span[class*=vendor]').text
      favorite.url = div.css('a')[0][:href]
          end
      @favorites << favorite

  end
      @favorites



    def doc
      @doc ||= Nokogiri::HTML(open(@url))

    end


end
