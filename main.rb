puts 'Gerador de senhas iniciado!'

puts ' - Para qual serviço será esta senha?'; service = gets.chomp
puts ' - Quantos digitos?'; digits = gets.chomp
puts ' - Caracteres especiais? (Y/N)'; special_char = gets.chomp
if special_char == 'y' || special_char == 'Y'
    special_char = true
else
    special_char = false
end

password = ''
(1..digits.to_i).each do
    digit_type = [:number, :special_char, :letter, :up_letter].sample
    

    puts digit_type
    case digit_type
    when :number
        digit = rand((1..9))
    when :special_char
        redo unless special_char
        special_char = [
            "!", "@", "#", "$", "%", "&", "*", "(", ")", "-", "_", "=", "+",
            "{", "}", "[", "]", ":", ";", "<", ">", ".", "?"
          ]
        digit = special_char.sample
    when :letter
        digit = ('a'..'z').to_a.sample
    when :up_letter
        digit = ('A'..'Z').to_a.sample
    end

    password += digit.to_s
end

puts password + service