require 'pry'

class OprahsFavoriteThings::CLI
  def start
    puts "Hello World from CLI"
    OprahsFavoriteThings::Favorites.new.start
    OprahsFavoriteThings::Scraper.new.start
#Instantiate Scraper and run #start and it should puts "Hello from Scraper".
  end

  # def call
  #   OprahsFavoriteThings::Scraper.new.make_favorites
  #   make_favorites
  #   start
  # end
  #
  #
  # def start
  #   input = nil
  #   while input != "exit"
  #   Scraper.new.scrape_index(favorites)
  #   puts ""
  #   puts "Welcome to Oprah's Favorite Things 2018."
  #   puts "What number of Oprah's favorite things would you like to see? 1-5, 6-10, 11-15?"
  #   puts ""
  #   input = gets.strip.to_i
  #
  #   print_favorites(input)
  #
  #   puts ""
  #   puts "What favorites would you like more information on?"
  #   input = gets.strip
  #
  #   favorites = OprahsFavoriteThings::Favorite.find(input.to_i)
  #
  #   print_favorite(input)
  #
  #   puts ""
  #   puts "Would you like to see another favorite? Please enter  Y or N"
  #
  #   input = gets.strip.downcase
  #   if input == "y"
  #     start
  #   elsif input == "n"
  #     puts ""
  #     puts" Thank you. Have a great day."
  #     exit
  #   else
  #     puts ""
  #     puts "I don't understand that answer."
  #     start
  #     end
  #   end
  # end
  #
  #
  # def print_favorite(favorite)
  #   puts ""
  #   puts ""
  #   puts "Description: #{favorite.description}"
  #   puts "Cost: #{favorite.cost}"
  #   puts "Retailer: #{favorite.retailer}"
  # end
  #
  #
  # def make_favorites(from_number)
  #   puts ""
  #   puts"-----Favorites #{from_number} - #{from_number + 4} -----"
  #   puts ""
  #   OprahsFavoriteThings::Favorite.all[from_number-1, 10].each.with_index(from_number) do |favorite, index|
  #     puts "#{index}. #{favorite.description} - #{favorite.retailer}"
  #       end
  # end

end
