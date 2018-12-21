class OprahsFavoriteThings::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"))

  end

  def scrape_favorites_index
    html = open("https://www.today.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654")
    doc = Nokogiti::HTML(html)
    doc.css(".favorites").each do |favorites|
        ****.text
    self.get_page.css("")


<a href="https://www.amazon.com/b?node=18188463011&amp;?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a> #first item
<a href="https://www.today.com/parents/holiday-family-matching-pajama-set-ideas-t117017" target="_blank" class=" vilynx_listened">matching family pajamas</a>
# first item's description

<a href="https://www.amazon.com/gp/product/B07FF7NVSM?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a>#second item
<h2 class="title___3Yk1c mb6 mt0 lh-none">APL: Athletic Propulsion Labs Women's Techloom Bliss Sneakers</h2>

<
:a href="https://www.amazon.com/gp/product/B07HJJ92Z3?tag=118330-oprahfavoritethings-20" target="_blank">Amazon</a>
<h2 class="title___3Yk1c mb6 mt0 lh-none">Glamourpuss NYC Knitted Faux Fur Mitten</h2> #third it'em's description

  end


  def make_favorites
    scrape_favorites_index.each do |f|
      OprahsFavoriteThings::Favorites.new_from_index_page(f)|
      end
  end

end






end
