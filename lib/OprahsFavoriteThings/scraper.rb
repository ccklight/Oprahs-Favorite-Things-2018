require 'pry'

class OprahsFavoriteThings::Scraper

  def welcome
    puts ""
  end


  def self.get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))
    #binding.pry
  end


  def self.scrape_favorites
    #self.get_page.css("div.body_2BbXy ul").each do |thing|
    # puts thing.text     then end after this
    page = self.get_page.css
    page.css("div.body___2BbXy ul")[0..14].each do |thing|
      OprahsFavoriteThings::Favorites.new(thing.text)
      end
    # product_urls = page.css("")[0..14].map do |thing|
    #   thing.text
    #   end
    product = page.css("div.body___2BbXy ul")[0..14].map do |thing|
       thing.text
      end

  end


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
          end
        end
    Scraper.new.print_favorites

  end

end


  #   product_paraph = page.css("")[0..14].each do |thing|
  #    thing.text
  #   end
  #   #css("div.body___2BbXy ul") .This is the code to use to access a favorite thing. .each or . map to iterate over each one.
  # end
  #
  # def scrape_favorites_index
  #   html = open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654") #grabs HTML that makes up landing page
  #   doc = Nokogiri::HTML(html) #converts HtML string returned by open-uri method and converts to a Node set
  #   #doc.css(".favorites").each do |favorites|
  #     #  ****.text
  #   self.get_page.css("<a href="https://www.amazon.com/b?node=18188463011&amp;?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a> #first item
  #
  # end
  #
  #
