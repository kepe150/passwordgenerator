puts ' - Quantos digitos?'; digits = gets.chomp
password = ''

for i in (1..digits.to_i) do
    password += rand((0..9)).to_s
end

puts "Senha: #{password}"