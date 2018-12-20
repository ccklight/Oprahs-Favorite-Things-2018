class OprahsFavoriteThings::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))
    
binding pry
  end

  def scrape_favorites_index
    self.get_page.css("")
  end

  def make_favorites
    scrape_favorites_index.each do |f|
      OprahsFavoriteThings::Favorites.new_from_index_page(f)|
      end
  end
end






end
