class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.find_by(name: "Drake")
      Artist.find_by(name: "Drake").songs << self
    else 
      drake = Artist.new(name: "Drake")
      drake.songs << self
    end
  end
end