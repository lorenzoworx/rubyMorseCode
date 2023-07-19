def convert_character(morse_character)
  morse_map = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
    '--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_map[morse_character] || ''
end

def convert_word(morse_word)
  morse_word.split.map { |morse_character| convert_character(morse_character) }.join
end

def decode_morse_data(message)
  words = message.split('   ').map { |morse_word| convert_word(morse_word) }
  words.join(' ')
end
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_morse_data(message)
puts decoded_message
