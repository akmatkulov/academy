
def word_cs(words)
  chars = words.split('')
  if chars.last.include?('s') && chars[chars.length - 2].include?('c')
     "Include 'cs': #{2**(chars.length)}"
  else
    words.reverse
  end
end

word = ARGV[0].chomp

puts word_cs(word)
