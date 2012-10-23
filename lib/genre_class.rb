class Genre
	attr_accessor :name, :songs, :artists

	@@genres = []

	def initialize
	@name = []
	@songs = []
	@artists = []
	@@genres << self
	end

	def self.all 
		@@genres	
	end

	def self.reset_genres
		@@genres = []
	end

	def self.count
		@@genres.length 
		# .count, .size
	end

	def artists
		@songs.map {|song| song.artist}.uniq
	end

	def reset_genres
		@genres = []
	end
	


end
