require_relative "../lib/OprahsFavoriteThings/version"

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'

require_relative "../config/environment"

require_relative "../lib/OprahsFavoriteThings/cli"
require_relative "../lib/OprahsFavoriteThings/favorites"
require_relative "../lib/OprahsFavoriteThings/hardcodes"
require_relative "../lib/OprahsFavoriteThings/scraper"
require_relative "../lib/OprahsFavoriteThings/version"
#require_relative "../lib/OprahsFavoriteThings/wife"

#   class MyError < StandardError # Create subclass of an exception. Source: Stack Overflow
#     def initialize(msg = "You've triggered a MyError")
#       super(msg)
#     end
#   end
#
# site = "https://www.goday.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"
#
# page = Nokogiri::HTML(open(site))
#
# page.css("ul li strong")[0].text
