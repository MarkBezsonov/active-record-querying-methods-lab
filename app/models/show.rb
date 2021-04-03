class Show < ActiveRecord::Base
    def instantiate_and_save
        show = Show.new
        show.name = "This is a name."
        movie.save 
    end
      
    def create
        attributes = {
            name: "Name",
            network: "Network",
            day: "Day",
            rating: 0,
            season: "Season"
        }
        show = Show.create(attributes)
    end
    
    def self.highest_rating
        Show.maximum(:rating)
    end
    
    def self.most_popular_show #Doesn't work
        Show.where(:rating == self.highest_rating)
    end
    
    def self.lowest_rating
        Show.minimum(:rating)
    end
    
    def self.least_popular_show #Doesn't work
        
    end
    
    def self.ratings_sum
        Show.sum(:rating)
    end
    
    def self.popular_shows #Doesn't work
        Show.where(rating: true).any?
    end

    def self.shows_by_alphabetical_order #Doesn't work
        Show.order(:created_at)
    end
end