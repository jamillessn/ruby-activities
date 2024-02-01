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


#EACH VERSION
# def is_isogram(str)
#   str = str.downcase
#   string_length = str.length

#   (0...string_length - 1).each do |counter|
#     current_char = str[counter]

#     (counter + 1...string_length).each do |inner_counter|
#       return false if current_char == str[inner_counter]
#     end
#   end

#   true
# end
