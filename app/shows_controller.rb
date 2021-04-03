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

def highest_rating(rating)
    Show.maximum(rating)
end

def most_popular_show
end

def lowest_rating(rating)
    Show.minimum(rating)
end

def least_popular_show
end

def ratings_sum
end

def popular_shows
end

def shows_by_alphabetical_order
end