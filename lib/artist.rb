class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def self.song_count
        tracks = Song.all
        track_count = tracks.count
    end
end
