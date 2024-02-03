def disemvowel_trolls(input)
    vowels = 'aeiou'
    output = ''

    input.each_char do |char|
        if !vowels.include?(char.downcase)
            output += char  
        end
    end

    p output
end

disemvowel_trolls("This website is for losers LOL!")