class OprahsFavoriteThings::CLI

  def start

    OprahsFavoriteThings::Scraper.scrape_favorites
    favorites = OprahsFavoriteThings::Favorites.all
    OprahsFavoriteThings::Scraper.get_page

    input = nil
    while input != "exit"
    puts ""
    puts "Welcome to Oprah's Favorite Things of 2018. From this list, enter a number from 1-15:"

    favorites.each do |favorite|
      puts favorite.title

      end

    puts ""

    input = gets.strip.to_i
    print_favorite(favorites[input])

    puts "Please type the number of the product you would you like to see."
    puts ""

    input = gets.strip.to_i
    print_favorite(favorites[input])

    puts "What favorites would you like more information on?"
    puts ""

    input = gets.strip.to_i
    print_favorite(favorites[input])


    print_favorite(favorites[input])

    puts ""
    puts "Would you like to see another favorite? Please enter  Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts" Thank you. Goodbye."
      exit
      end
    end
   end


  def print_favorite(favorite)
    puts ""
    puts ""
    puts "Description: #{favorite.description}"
    puts "Price: #{favorite.price}"
    puts "Retailer: #{favorite.retailer}"
  end

end
