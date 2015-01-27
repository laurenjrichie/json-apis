class Movie < ActiveRecord::Base
  def self.search(title, year)
    movies = Movie.all

    if title
      movies = movies.where("title ILIKE ?", "%#{title}%")
    end

    if year
      movies = movies.where("year = ?", year)
    end

    movies
  end
end
