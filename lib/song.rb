require 'pry'

class Song
    @@all = []

    attr_accessor :name
    attr_accessor :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist ? self.artist.name : nil
    end
end

