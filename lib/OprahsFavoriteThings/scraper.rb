require 'pry'
class OprahsFavoriteThings::Scraper

  def welcome
    puts "Scraper says Hello World"
  end


  def self.get_page # class method---this is like the machine itself.
     Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))
    #self.get_page
    #binding.pry
  end


  def self.scrape_favorites
    page = self.get_page
    page.css("div.body___2BbXy ul")[0..14].each do |thing|
      OprahsFavoriteThings::Favorites.new(thing.text)
      end
    product_urls = page.css("")[0..14].map do |thing|
    product = page.css("div.body___2BbXy ul")[0..14].map do |thing|
       thing.text
  end
    binding.pry

    def descriptors_of_favorites
      container = favorites, title description, price, image, retailer, url
      a = favorites
      b = title
      c = description
      d = price
      e = image
      f = retailer
      g = url
    end

    def b(title)
      css("<h2 class="title___3Yk1c mb6 mt0") each do |title|
        end
    end


    def c(description)
    css("<p class="">) each do |description|
        end
      end


    def d(price)
      css("<span class="ListicleProduct__priceBtn cost___1u0dk cost) each do |price|
        end
    end


    def e(image)
      css("<picture class=""><source media="(min-width: 758px") each do |image|
        end
    end


    def f(retailer)
      css("<button class="ListicleProduct__vendorBtn vendor___2BDSG vendor___1RnZ5") each do |retailer|
        end
    end


    product_paraph = page.css("")[0..14].each do |thing|
     thing.text
    end
    #css("div.body___2BbXy ul") .This is the code to use to access a favorite thing. .each or . map to iterate over each one.


  # def scrape_favorites_index
  #   html = open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654") #grabs HTML that makes up landing page
  #   doc = Nokogiri::HTML(html) #converts HtML string returned by open-uri method and converts to a Node set
  #   #doc.css(".favorites").each do |favorites|
  #       ****.text
  #   self.get_page.css("<a href="https://www.amazon.com/b?node=18188463011&amp;?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a> #first item
  #
  # end
  #
  #
  # def make_favorites
  #   self.get_favorites.each do |f|
  #     favorite = Favorite.new
  #     favorite.title = <h2 class="title___3Yk1c mb6 mt0 lh-none">APL: Athletic Propulsion Labs Women's Techloom Bliss Sneakers</h2>
  #     favorite.description = post.css ("<p class="">Easily go from the gym to a nice lunch in these stylish sneakers, which come in seven different colors.</p>").text
  #     favorite.cost = <strong>1. Burt's Bees Holiday Family Pajamas, $10+.css ().text[01]
  #     favorite.retailer = <button class="ListicleProduct__vendorBtn vendor___2BDSG vendor___1RnZ5 justify-center lh-denone ls-normal pt0 pb0 pl5 df bw-1px items-center"><span class="icon___1DgK6 lh-copy f2 white icon icon-shop"></span><span class="vendorName___1o43U founders-mono f3 f4-m ttu white">Amazon</span></button>.css().text
  #     favorite.image = <img src="https://media2.s-nbcnews.com/j/newscms/2018_45/1384009/holiday_family_pajamas_cf552b884374f83627d0eb3044f75f53.fit-720w.jpg" alt="">
  #
  #     Scraper.new.make_favorite
  #     end
  # end
  #
  #
  def print__favorites
    self.make_favorites
    Favorite.all.each do |favorite|
      if favorite.description
        puts "Favorites: #{favorite.description}"
        puts "Title: #{favorite.title}"
        puts "Description: #{favorite.description}"
        puts "Price: #{favorite.price}"
        puts "Image: #{favorite.image}"
        puts "Retailer: #{favorite.retailer}"

    Scraper.new.print_favorites

  end


end
