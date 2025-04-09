def caesar_cipher(text, key)
    encrypted_text = text.chars.map do |char|
      if char.match?(/[A-Za-z]/) # Check if character is a letter
        base = char.ord < 91 ? 'A'.ord : 'a'.ord # Determine base ASCII
        (((char.ord - base + key) % 26) + base).chr # Shift and wrap around alphabet
      else
        char # Keep non-letter characters unchanged
      end
    end
    encrypted_text.join
  end
  
  # Get user input
  print "Enter a string to encrypt: "
  text = gets.chomp
  print "Enter shift key (number): "
  key = gets.chomp.to_i
  
  # Encrypt and display result
  encrypted_text = caesar_cipher(text, key)
  puts "Encrypted text: #{encrypted_text}"
  