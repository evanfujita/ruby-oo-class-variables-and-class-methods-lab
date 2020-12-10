require 'pry'

class Song
    @@count = 0
    @@song = []
    @@artists = []
    @@genres = []
    
    
    attr_accessor :song, :artist, :count, :genres, :genre_count

    def initialize(name, artist, genre)
        @name = name
        @@song << @name
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
        @@count += 1
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end
    
    def self.artist_count
        artist_count = {}
        @@artists.each do |genre| 
            if  artist_count[genre]
                artist_count[genre] += 1
            else
                artist_count[genre] = 1
            end
        end    
        artist_count
    end

    def self.artists
        @@artists.uniq
    end

    def genre_count
        @@genre_count
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre| 
            if  genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end    
        genre_count
    end

    def self.genres
        @@genres.uniq
    end

    def self.count 
        @@count
    end

end

#binding.pry