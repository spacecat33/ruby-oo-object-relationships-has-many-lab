class Artist
    attr_accessor :name
  
    @@song_count = 0

    def initialize(name)
      @name = name
      @songs = []
    end
  
    def songs
      Song.all.select {|song| song.artist == self}
    end
    
    def add_song(song)
      @@song_count += 1
      @songs << song
      song.artist = self
    end

    def add_song_by_name(name)
        x = Song.new(name)
        self.add_song(x)
        x
    end

    def self.song_count
        Song.all.count    #not sure why @@song_count doesn't work here?
    end
  
  end
    