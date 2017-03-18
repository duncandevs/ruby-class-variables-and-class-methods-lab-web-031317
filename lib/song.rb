#return number of songs saved
#return an array of artists in the system
#return an array of genres in the system
#genre count returns a hash of songs belongin to a genre in the system
  #ie: {"rap" => 4, "pop"=> 6,...."genre-n"=> num }
#song Artist count, return the number of songs a specific artist has in the system
  #ir {"beyonce"=> 3, "jayz" => 6}

#each song is initialized with a name, artist, genre using attr_accessor
require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    result = {}
    @@genres.each do |genre|
      result[genre] =  @@genres.count(genre)
    end
    result
  end

  def self.artist_count
    result = {}
    @@artists.each do |artist|
      result[artist] = @@artists.count(artist)
    end
    result
  end
end
