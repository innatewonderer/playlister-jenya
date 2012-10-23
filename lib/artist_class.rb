class Artist
	attr_accessor :name, :songs, :genres, :artists

	@@artists = []

	def initialize
		@name ||= []
		@songs ||= []
		@genres ||= []
		@@artists << self
	end

	def self.all
		@@artists
	end

	def self.reset_artists
		@@artists = []
	end

	def self.count
		@@artists.length
	end

	def songs_count
		@songs.length
	end

	def add_song(song)
		@songs << song
		song.artist = self
		# @genres << song.genre
		# unless song.genre.artists.include?(self)
		# 	song.genre.artists << self
		# end
		
		#put array of artist in genre class  << self
		
	end

	def genres
		@songs.map do |song|
			song.genre
		end

	end

	# def self.create_uniq(artistname)
	#     if self.include?(artistname)
	#       self.find(artistname)
	#     else
	#       self.new.tap{|a| a.name = artistname}
	#     end
 #  	end


end
