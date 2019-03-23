class Show < ActiveRecord::Base
    def self.highest_rating
        Show.all.map(&:rating).max
    end

    def self.most_popular_show
        Show.all.max_by(&:rating)
    end

    def self.lowest_rating
        Show.all.map(&:rating).min
    end

    def self.least_popular_show
        Show.all.min_by(&:rating)
    end

    def self.ratings_sum
        Show.all.map(&:rating).reduce(:+)
    end

    def self.popular_shows
        Show.all.select { |show| show.rating > 5 }
    end

    def self.shows_by_alphabetical_order
        Show.all.sort_by(&:name)
    end
#   ::lowest_rating
#     returns the TV show with the lowest rating (FAILED - 3)
#   ::least_popular_show
#     returns the tv show with the lowest rating (FAILED - 4)
#   ::ratings_sum
#     returns the sum of all the ratings of all the tv shows (FAILED - 5)
#   ::popular_shows
#     returns an array of all of the shows with a rating above 5 (FAILED - 6)
#   ::shows_by_alphabetical_order
#     returns an array of all of the shows, listed in alphabetical order (FAILED - 7)

end