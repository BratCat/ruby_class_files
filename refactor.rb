class Music
    
    attr_accessor :band_name, :album_name, :year
    
end    

my_music = Music.new
my_music.band_name = 'In This Moment'
my_music.album_name = 'Black Widow'
my_music.year = '2014'
bandname=my_music.band_name
albumname=my_music.album_name
year=my_music.year

puts "The band #{bandname} came out with #{albumname} in #{year}."

puts my_music.inspect