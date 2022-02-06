
def word_cs(words)
  chars = words.split('')
  if chars.last.include?('S') && chars[chars.length - 2].include?('C')
     "Include 'CS': #{2**(chars.length)}"
  else
    words.reverse
  end
end

word = ARGV[0].chomp

puts word_cs(word)
