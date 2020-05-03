require 'mechanize'

class Crawler::Tabelog < BaseCrawler
  def initialize(restaurant)
    @restaurant = restaurant
  end

  def run
    Rails.logger.info 'tabelog scraping start...'
    Rails.logger.info "tabelog scraping url: #{@restaurant.external_link}"
    begin
      agent = Mechanize.new
      page = agent.get(@restaurant.external_link)

      image_elements = page.search('img.p-main-photos__slider-image')
      @restaurant.image = image_elements[0].attributes["src"].value

      restaurant_info_elements = page.search('section.rdheader-info-wrap.pillow-header')
      @restaurant.name = 
        restaurant_info_elements.search('div.rdheader-rstname-wrap h2.display-name span').text.gsub(/(^[[:space:]]+)|([[:space:]]+$)/, '')
      @restaurant.nearest_station =
        restaurant_info_elements.search('div.rdheader-subinfo dl.rdheader-subinfo__item--station dd.rdheader-subinfo__item-text span').text
      
      Rails.logger.info "tabelog scraping done"
    rescue => exception
      Rails.logger.info "tabelog scraping failed: #{@restaurant.id}"
    end
  end
end