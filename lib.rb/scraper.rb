class OprahsFavoriteThings::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))
  end

  def scrape_favorites_index
    html = open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654") #grabs HTML that makes up landing page
    doc = Nokogiri::HTML(html) #converts HtML string returned by open-uri method and converts to a Node set
    doc.css(".favorites").each do |favorites|
        ****.text
    self.get_page.css("<a href="https://www.amazon.com/b?node=18188463011&amp;?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a> #first item


  end

  def make_favorites
    self.get_favorites.each do |f|
      favorite = Favorite.new
      favorite.description = post.css ("").text
      favorite.cost = **.css ().text
      favorite.retailer = **.css().text

      Scraper.new.print_favorite

      #OprahsFavoriteThings::Favorites.new_from_index_page(f)|
      end
  end

end






end
