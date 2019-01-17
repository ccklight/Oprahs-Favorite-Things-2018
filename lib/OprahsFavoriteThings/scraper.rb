require 'pry'

class OprahsFavoriteThings::Scraper

  def welcome
    puts ""
  end


  def self.get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))

  end


  def self.scrape_favorites
    page = self.get_page.css
    page.css("div.body___2BbXy ul")[0..14].each do |thing|
      OprahsFavoriteThings::Favorites.new(thing.text)
      end

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
