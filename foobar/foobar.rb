def foobar(first_n, second_n)
  if first_n == 20 || second_n ==20
    second_n
  else
    first_n + second_n
  end
end

print "Enter the first number: "
first = gets.to_i
print "Enter the second number: "
second = gets.to_i

puts foobar(first, second)
