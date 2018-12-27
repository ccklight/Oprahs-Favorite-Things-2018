class OprahsFavoriteThings::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))
  end


  def get_favorites
    self.get_page.css(".")
  end


  def scrape_favorites_index
    html = open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654") #grabs HTML that makes up landing page
    doc = Nokogiri::HTML(html) #converts HtML string returned by open-uri method and converts to a Node set
    #doc.css(".favorites").each do |favorites|
        ****.text
    self.get_page.css("<a href="https://www.amazon.com/b?node=18188463011&amp;?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a> #first item

  end


  def make_favorites
    self.get_favorites.each do |f|
      favorite = Favorite.new
      favorite.description = post.css ("").text
      favorite.cost = <strong>1. Burt's Bees Holiday Family Pajamas, $10+.css ().text[01]
      favorite.retailer = <button class="ListicleProduct__vendorBtn vendor___2BDSG vendor___1RnZ5 justify-center lh-denone ls-normal pt0 pb0 pl5 df bw-1px items-center"><span class="icon___1DgK6 lh-copy f2 white icon icon-shop"></span><span class="vendorName___1o43U founders-mono f3 f4-m ttu white">Amazon</span></button>.css().text

      Scraper.new.print_favorite
      end
  end

  def print__favorites
    self.make_favorites
    Favorite.all.each do |favorite|
      if favorite.description
        puts "Description: '#{favorite.description}"
        puts "Cost: #{favorite.cost}"
        puts "Retail: #{favorite.retail}"

    Scraper.new.print_favorites

end






end
