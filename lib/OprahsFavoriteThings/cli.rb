class OprahsFavoriteThings::CLI

  def start

    OprahsFavoriteThings::Scraper.scrape_favorites
    favorites = OprahsFavoriteThings::Favorites.all
    OprahsFavoriteThings::Scraper.get_page

    input = nil
    while input != "exit"
    puts ""
    puts "Welcome to Oprah's Favorite Things 2018. Here is a list of Oprah's Favorite Things:"

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
      puts" Thank you. Have a great day."
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
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


  # def make_favorites(from_number)
  #   puts ""
  #   puts"-----Favorites #{from_number} - #{from_number + 4} -----"
  #   puts ""
  #   OprahsFavoriteThings::Favorite.all[from_number-1, 10].each.with_index(from_number) do |favorite, index|
  #     puts "#{index}. #{favorite.description} - #{favorite.retailer}"
  #       end
  # end


end
