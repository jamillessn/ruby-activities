#Inheritance

class Animal
    def initialize(name,sound)
        @name = name
        @sound = sound
    end

    def speak
        puts "#{@name} says #{@sound}"
    end
end

class Bird < Animal
    def speak
        puts "A #{@name} makes a #{@sound} sound."
    end
end

class Frog < Animal
    def speak
        puts "A #{@name} makes a #{@sound} sound."
    end
end

maya = Bird.new("Maya", "chirp chirp")
maya.speak

kermit = Frog.new("Kermit", "ribbit ribbit")
kermit.speak


