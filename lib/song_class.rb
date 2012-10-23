class Song
	attr_accessor :genre, :name, :artist

	@@songs = []

	def initialize
		@genres = []
		@name = []
	end

	def self.all
		@@songs
	end

	def songs_count
		@@songs.length
	end

	def genre=(genre)
		@genre = genre
		genre.songs << self
	end

	# def artist=(artist)
	# 	@artist = artist
	# 	artist.add_song(self)
	# end

end

#song has one genre
#artist has many genres
#multiple genres
#genres are unique by name
#artist are unique by name