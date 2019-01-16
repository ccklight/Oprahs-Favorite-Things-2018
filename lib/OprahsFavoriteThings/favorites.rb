class OprahsFavoriteThings::Favorites
  attr_accessor  :title, :description, :price, :image, :retailer, :url


  def self.all
    self.new.favorites
  end

  def self.find_by_name title
    self.all.find do |favorite|
      favorite.title === title
    end
  end


  def initialize
    @url = "https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
  end

  # Iterate product divs and create an array of Product objects
  def favorites
    if @favorites
       @favorites
    end
    @favorites = []
    doc.css('div.listicleProduct').each do |div|
      product = OprahsFavoriteThings::Favorite.new
      favorite.price = div.css('span[class*=price]').text
      favorite.title = div.css('h2').text

      #description is in p following div
      favorite.description = div.css('+ p').text
      favorite.image = div.css('img')[0][:src]
      favorite.retailer = div.css('span[class*=vendor]').text
      favorite.url = div.css('a')[0][:href]

      @favorites << favorite
    end
    @favorites
  end

  def doc
    @doc ||= Nokogiri::HTML(open(@url)) #doc variable is equivalent to HTML string Nokogiri retrieves
  end

end


**********
#class OprahsFavoriteThings::Product
#def initialize args = {}
  # @title = args[:title]
  # @description = args[:description]
  # @price = args[:price]
  # @image = args[:image]
  # @retailer = args[:retailer]
  # @url = args[:url]
#end

# def attributes
#   {
#     title: @title,
#     description: @description,
#     price: @price,
#     image: @image,
#     retailer: @retailer,
#     url: @url
#   }
#end
end
