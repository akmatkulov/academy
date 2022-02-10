TEXTFILE = 'people.txt'
BUFFER = 'results.txt'


def update(age)
  file = File.open(BUFFER, 'a')
  File.foreach(TEXTFILE) do |line|

      if line.include?(age) && not file.include?(line)
        file.puts(line)
      end

  end
  file.close


end

  print "Enter age: "
  age_number = gets.chomp
  update(age_number)
