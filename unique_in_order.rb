def unique_in_order(str)
    str_array = []

          (0...str.length).each do |char|
                current_char = str[char]
            
                if current_char != str[char+1]
                        str_array.push(current_char)
                end
        end
    p str_array
end

unique_in_order('AAAABBBCCDAABBB')
unique_in_order('AABBCcAD')
unique_in_order([1,2,2,3,3])