def greeting(firstname, lastname, age)
  if age < 18
    "Привет. #{firstname} #{lastname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    "Привет. #{firstname} #{lastname}. Самое время занятся делом"
  end
end

print "Введите ваше имя:"
firstname = gets.chomp
print "Введите вашу фамилию:"
lastname = gets.chomp
print "Введите ваш возраст:"
age = gets.to_i

greeting(firstname, lastname, age)
