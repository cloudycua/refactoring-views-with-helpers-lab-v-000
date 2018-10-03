class Song < ActiveRecord::Base
  belongs_to :artist

# allows an Artist to be retrieved from and associated
# with a Song instance
  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
