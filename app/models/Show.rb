class Show < ActiveRecord::Base

  def self.highest_rating
    # binding.pry
    highest = Show.select(:rating).order(:rating).last
    highest.rating
  end

  def self.most_popular_show
    Show.order(:rating).last
  end

  def self.least_popular_show
    Show.order(:rating).first
  end

  def self.lowest_rating
    lowest = Show.select(:rating).order(:rating).first
    lowest.rating
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.all.select{|show|show.rating > 5}
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end
