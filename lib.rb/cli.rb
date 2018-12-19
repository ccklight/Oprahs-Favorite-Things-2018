class OprahsFavoriteThings::CLI

  def call
    OprahsFavoriteThings::CLI.new.make_favorites
    puts "Welcome to Oprah's Favorite Things 2018."
    start
  end

  def start
    puts ""
    puts "What number of favorite things would you like to see? 1-5, 6-10, 11-15?"
    input = gets.strip.to_i

    print_favorites(input)

    puts ""
    puts "What favorites would you like more information on?"
    input = gets.strip

    favorites =OprahsFavoriteThings::Favorites.find(input.to_i)

    print_favorites(favorites)

    puts ""
    puts "Would you like ot see another favorite? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts" Thank you. Have a great day."
      exit
      
