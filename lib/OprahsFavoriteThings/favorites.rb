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
      product.title === title
    end
  end


  def initialize
    @url = "https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
  end


  def products
    if products
      products
    end

    @products = []

    doc.css('div.listicleProduct').each do |div|
      product = OprahsFavoriteThings::Product.new
      product.price = div.css('span[class*=price]').text
      product.title = div.css('h2').text
        end
      product.description = div .css ('+ p').text
      product.image = div.css('img')[0][:src]
      product.retailer = div.css('span[class*=vendor]').text
      product.url = div.css('a')[0][:href]
      products << product
    end
      products
    end

  def doc
      @doc  ||= Nokogiri::HTML(open(@url))
      retrieves
  end


#   def self.find_by_name(favorites)
#     self.all.find do |favorites|
#       self.favorite == favorite
#       end
#   end

#end
