require_relative "..oprahs_favorites/version" # Per Flatiron, put the version file first"

require 'nokogiri'
require 'open-url'
require 'pry'
require 'colorize'

require_relative "../config/environment"

require_relative "OprahsFavoriteThings2018/version"
require_relative "OprahsFavoriteThings2018/favorites"
require_relative "OprahsFavoriteThings2018/cli"
require_relative "OprahsFavoriteThings2018/scraper"
require_relative "OprahsFavoriteThings2018/hardcodes"


  class MyError < StandardError # Create subclass of an exception. Source: Stack Overflow
    def initialize(msg = "You've triggered a MyError")
      super(msg)
    end
  end

site = "https://www.goday.com/style/oprahs-favorite-things-2018-oprahs-picks-announced-t141654"

page = Nokogiri::HTML(open(site))

page.css("ul li strong")[0].text
