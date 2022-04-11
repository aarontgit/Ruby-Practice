
def caeser_cipher(string, shift_factor)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alpha_array = alphabet.split("")

  string_array = string.split("")
  new_string = ""

  string_array.each do |letter|
    if letter == " "
      new_string += " "
    else
      index = alpha_array.find_index(letter) + shift_factor
      if index > alpha_array.find_index("z")
        index = index - 26
      else
        index = index
      end
      new_string += alpha_array[index]
    end
  end
  puts new_string
end    
