def add_pokemon(name_a, color_a)
   { name: "#{name_a}", color: "#{color_a}" }
end


arr = []

print "Please enter Pockemons: "
numbers = gets.to_i
num_pokemon = 0

while num_pokemon < numbers

  print "Please enter name: "
  name = gets.chomp
  print "Please enter color: "
  color = gets.chomp

  num_pokemon += 1

  arr << add_pokemon(name, color)

end

puts arr
