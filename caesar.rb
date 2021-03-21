def get_string
  puts "Enter text you would like to Caesar Cipher:"
  print "> "
  string = gets.chomp
  return string
end

def get_shift
  puts "How much would you like to shift your text?"
  print "> "
  shift = gets.chomp
  shift = shift.to_i
  if shift == 0
    return get_shift
  end
  return shift
end

def adjust_shift(shift)
  while shift < 0 do
    shift += 26
  end
  while shift > 26 do
    shift -= 26
  end
  return shift
end

def char_to_ord(string)
  string = string.split("")
  ord_string = string.map { |char| char = char.ord }
  return ord_string
end

def char_shift(array, shift)
  shifted_string = []
  array.map do |char|
    if char >= 65 and char <= 90
      char += shift
      if char > 90
        char -= 26
      end
      shifted_string.push(char)
    elsif char >= 97 and char <= 122
      char += shift
      if char > 122
        char -= 26
      end
      shifted_string.push(char)
    else
      shifted_string.push(char)
    end
  end
  return shifted_string
end

def ord_to_char(array)
  ord_to_char_string = array.map { |ord| ord.chr }
  final_string = ord_to_char_string.join
  return final_string
end

def caesar
  string = get_string
  shift  = get_shift
  final_shift = adjust_shift(shift)
  ord_string = char_to_ord(string)
  shifted_string = char_shift(ord_string, final_shift)
  final_string = ord_to_char(shifted_string)
  print final_string
end

caesar