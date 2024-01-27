

#1
arr1 = [1,2,3,4,5,6,7,8,9,10]

arr1.each do |value|
  puts value
end

#2
h = {a:1, b:2, c:3, d:4}
puts "the value of b is #{h[:b]}"
h[:e] = 5
puts h

#3

contact_data = [
  ["john@email.com", "123 Main st.", "555-123-4567"],
  ["avion@email.com", "404 Not Found Dr.", "123-234-3456"]  
]

contacts = {"John Cruz": {}, "Avion School": {}}

def merge_contact_data(contact_data,contacts)
  contacts.each_key.with_index do |key, index|
    contacts[key][:email] = contact_data[index][0]
    contacts[key][:address] = contact_data[index][1]
    contacts[key][:phone] = contact_data[index][2]
  end

  contacts
end

puts merge_contact_data(contact_data, contacts)


#4
puts "How old are you?"
age = gets.chomp.to_i 

puts "In 10 years, you will be #{age + 10} years old."
puts "In 20 years, you will be #{age + 20} years old."
puts "In 30 years, you will be #{age + 30} years old."
puts "In 40 years, you will be #{age + 40} years old."


#5
arr = [1, 3, 5, 7, 9, 11]
number = 3

def check_number(arr,number)
    arr.include?(number)
end

puts check_number(arr,number)


#6
puts "Enter any number: "
sample_no = gets.chomp.to_i  

def number_between(sample_no)
  if sample_no >= 0 && sample_no <= 50
    puts "between 0-50"
  elsif sample_no >= 51 && sample_no <= 100
    puts "between 51-100"
  elsif sample_no > 100
    puts "above 100"
  end
end

puts number_between(sample_no)
