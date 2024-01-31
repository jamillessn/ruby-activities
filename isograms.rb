def is_isogram(str)
    str = str.downcase
    string_length = str.length
    counter = 0
  
    while counter < string_length - 1
      current_char = str[counter]
      inner_counter = counter + 1
  
      while inner_counter < string_length
        if current_char == str[inner_counter]
          return false
        end
  
        inner_counter += 1
      end
  
      counter += 1
    end
  
    true
  end
  

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")