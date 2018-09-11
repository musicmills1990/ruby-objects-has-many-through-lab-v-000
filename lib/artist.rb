class Artist

@@all = []

attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end


def new_song(name, genre)
  song = Song.new(name, self, genre)
  song
end

def songs
  Song.all << songs
end


end
