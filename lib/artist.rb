require 'pry'
require_relative './song'

class Artist
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_instance)
        song_instance.artist = self
    end

    def add_song_by_name(title)
        song = Song.new(title)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end

