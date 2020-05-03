class CrawlingTabelogService < BaseService
  def initialize(restaurant)
    @restaurant = restaurant
  end

  def call
    Crawler::Tabelog.new(@restaurant).run
  end
end
