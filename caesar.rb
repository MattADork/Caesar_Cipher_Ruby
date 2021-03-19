def ord_to_char(array)
  array.map { |char| char.chr }
end

def caesar
  print 'Enter a sentence to Caesar Cipher! '
  string = gets.chomp
  print 'How much do you want to shift? '
  shift = gets.chomp
  string_split = string.split("")
  final_string = []
  shift = shift.to_i
  while shift < 0 do 
    shift += 26
  end
  while shift > 26 do
    shift -= 26
  end
  string_split.each do |char|
    char = char.ord

    if char >= 65 and char <= 90
      char += shift
      if char.ord > 90
      char -= 26
      end
      final_string.push(char)
    elsif char >= 97 and char <= 122
      char += shift
      if char.ord > 122
      char -= 26
      end
      final_string.push(char)
    else
      final_string.push(char)
    end
  end

  final_string = ord_to_char(final_string)
  puts final_string.join
end

caesar