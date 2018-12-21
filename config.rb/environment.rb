require 'nokogiri'
require 'open-url'
require 'pry'

require_relative "..oprahs_favorites/version"
module OprahFavorites

  
site = "https://www.goday.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"

page = Nokogiri::HTML(open(site))

page.css("ul li strong")[0].text
