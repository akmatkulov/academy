TEXTFILE = 'people.txt'
BUFFER = 'buffer.txt'


# Выводит все строки
def index
  text_file = File.read(TEXTFILE).split("\n")
end

# Находит конкретную строку в файле и выводит её
def find(id)
  File.foreach(TEXTFILE).with_index do |text, index|
    @text_line = text if index == id
  end
  @text_line
end

# Находит все строки, где есть указанный патерн
def where(pattern)
    @person_id = []
  File.foreach(TEXTFILE).with_index do |person, index|
    @person_id << index if person.include?(pattern)
  end
  @person_id
end

# Обновляет конкретную строку файла
def update(id, name)
  file = File.open(BUFFER, 'w')
  File.foreach(TEXTFILE).with_index do |line, index|
    file.puts(id == index ? name : line)
  end
  file.close

  File.write(TEXTFILE, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

# Удаляет строку
def delete(id)
  file = File.open(BUFFER, 'w')
  File.foreach(TEXTFILE).with_index do |line, index|
    if id != index
      file.puts(line)
    end
  end
  file.close
  File.write(TEXTFILE, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end
