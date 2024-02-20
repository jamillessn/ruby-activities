def encode(input)
    vowels = {'a'=>1, 'e'=>2, 'i'=>3, 'o'=>4, 'u'=>5}
    result = ''  

    input.each_char do |char|
        if vowels.has_key?(char) 
            result += vowels[char].to_s
        else 
            result += char
        end  
    end
    p result
end

def decode(input)
    vowels = {'1'=>'a', '2'=>'e', '3'=>'i', '4'=>'o', '5'=>'u'}
    result = ''
    
    input.each_char do |char|
        if vowels.has_key?(char)
            result += vowels[char].to_s
        else
            result += char
        end
    end
    
    p result
end

encode("hello")
decode("h3 th2r2")
