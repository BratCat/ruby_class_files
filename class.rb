class Music
    def set_band_name=(name)
        @name = name
    end
    
    def get_band_name
        return @name
    end
    
    def set_album_name=(album)
        @album = album
    end
    
    def get_album_name
        return @album
    end
    
    def set_pub_year=(year)
        @year = year
    end
    
    def get_pub_year
        return @year
    end
end

class Rock < Music
    
    def rocks
        return "The Best!"
    end 
end 

class Hip_Hop < Music
    
    def hiphop
        return "Meh, it's ok."
    end 
end

class Country < Music
    
    def booo
        return "awful!"
    end 
end

rock_music = Rock.new
rock_music.set_band_name= "In This Moment"
rockmusic = rock_music.get_band_name

hiphop_music = Hip_Hop.new
hiphop_music.set_band_name= "Beyonce"
hiphopmusic = hiphop_music.get_band_name

country_music = Country.new
country_music.set_band_name= "Conway Twitty"
countrymusic = country_music.get_band_name

puts "#{rockmusic} is #{rock_music.rocks}, #{hiphopmusic} is #{hiphop_music.hiphop}, #{countrymusic} is #{country_music.booo}."

puts rock_music.inspect
puts country_music.inspect
puts hiphop_music.inspect