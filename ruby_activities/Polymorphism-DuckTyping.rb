#Duck Typing

class Instrument
    def play_sound(instrument)
        instrument.play_sound
    end
end

class Guitar
    def play_sound
         puts "Strumming guitar"
    end
end

class Drum 
    def play_sound
         puts "Beating the drums"
    end
end

Yamaha = Instrument.new
guitar = Guitar.new
Yamaha.play_sound(guitar)

sonor = Instrument.new
drum = Drum.new
sonor.play_sound(drum)