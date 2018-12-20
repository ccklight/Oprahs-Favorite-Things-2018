class OprahsFavoriteThings::Favorites

  attr_accessors :description, :cost, :retailer # these are the three attributes to be extracted from site

  @@all - [] # empty array in which to place favorites 

  def self.new_from_index_page(favorites)
    self = OprahsFavoriteThings # the self is the class
    new = index.new  # new means each individual favorite item
    new_from_index_page = favorites.new # this shows what each new item is
    @index = index # each index item is equivalent to each item pulled from the index
    @list = list(favorites) # the instance of the list is equivalent to the list which has each favorite passed in
    list << favorites_from_index(favorites) # the list will have each favorite pulled from the index shovelled in
    self << favorite # each favorite is also passed into the class
    self.new # the new method of the class will be returned

  end

  def initialize(favorites)

  end

  def self.all
  end

  def self.find()
  end

  def_favorites()
  end

  def website_url
  end

  def description
  end

  def doc
    @doc  ||= Nokogiri::HTML(open(self.url))
  end

end
