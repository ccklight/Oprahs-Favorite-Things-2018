class Favorites

  attr_accessors

  @@all - []

  def self.new_from_index_page()
    self.new( )


  end

  def initialize
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
