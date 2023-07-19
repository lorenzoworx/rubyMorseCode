def convert_character(morse_character)
  morse_map = {
    '.-'    => 'A',   '-...'  => 'B',   '-.-.'  => 'C',   '-..'   => 'D',
    '.'     => 'E',   '..-.'  => 'F',   '--.'   => 'G',   '....'  => 'H',
    '..'    => 'I',   '.---'  => 'J',   '-.-'   => 'K',   '.-..'  => 'L',
    '--'    => 'M',   '-.'    => 'N',   '---'   => 'O',   '.--.'  => 'P',
    '--.-'  => 'Q',   '.-.'   => 'R',   '...'   => 'S',   '-'     => 'T',
    '..-'   => 'U',   '...-'  => 'V',   '.--'   => 'W',   '-..-'  => 'X',
    '-.--'  => 'Y',   '--..'  => 'Z',
    # Add more mappings here...
  }

  morse_map[morse_character] || ''
end

def convert_word(morse_word)
  decoded_word = morse_word.split(' ').map { |morse_character| convert_character(morse_character) }.join
  decoded_word
end

def decode_morse_data(message)  words = message.split('   ').map { |morse_word| convert_word(morse_word) }
  decoded_message = words.join(' ')
  decoded_message
end
  message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
  decoded_message = decode_morse_data(message)
  puts decoded_message
