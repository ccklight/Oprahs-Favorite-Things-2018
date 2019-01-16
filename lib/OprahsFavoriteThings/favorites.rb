class OprahsFavoriteThings::Favorites
  attr_accessor  :title, :description, :price, :image, :retailer, :url

  # class methods
  def self.all
    self.new.products
  end

  def self.find_by_name title
    self.all.find do |product|
      product.title === title
    end
  end

  # instance methods
  def initialize
    @url = "https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
  end

  # Iterate product divs and create an array of Product objects
  def products
    if @products
      return @products
    end
    @products = []
    doc.css('div.listicleProduct').each do |div|
      product = OprahsFavoriteThings::Product.new
      product.price = div.css('span[class*=price]').text
      product.title = div.css('h2').text

      #description is in p following div
      product.description = div.css('+ p').text
      product.image = div.css('img')[0][:src]
      product.retailer = div.css('span[class*=vendor]').text
      product.url = div.css('a')[0][:href]

      @products << product
    end
    @products
  end

  def doc
    @doc ||= Nokogiri::HTML(open(@url)) #doc variable is equivalent to HTML string Nokogiri retrieves
  end

end
