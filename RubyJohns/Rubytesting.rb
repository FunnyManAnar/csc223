puts "enter message to encrypt:"
message_string = gets.chomp
puts "enter key:"
int_key = gets.chomp.to_i
message_array = message_string.chars

puts message_array.inspect

i = 0 
shifted_array = ''

until i == message_array.size do
    if message_array[i] == ' '
        shifted_array << ' '
    else
        shifted_message = message_array[i].ord + int_key
        (shifted_message > 122) ? shifted_message -= 26 : nil
        shifted_array << shifted_message.chr
    end

    i += 1
end

puts shifted_array

