def char_decoder(char)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }

  morse_alphabet[char]
end

def word_decoder(word)
  word.split.map { |char| char_decoder(char) }.join
end

def decoding(message)
  message.split('   ').map { |word| word_decoder(word) }.join(' ')
end

puts decoding('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# "A BOX FULL OF RUBIES"
