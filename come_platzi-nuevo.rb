alimento = ARGV.shift

File.open('alimentos.txt', 'a') do |registro|
  registro.puts "#{alimento},#{Time.now}"
end

puts "Se agregó #{alimento}"