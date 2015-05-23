codigo = ARGV.shift.to_i

File.open('alimentos.txt', 'r') do |registros|
  File.open('alimentos.nuevo.txt', 'w') do |actualizados|

	  identificador = 1

	  registros.readlines.each do |linea|
		  descripcion, creacion = linea.chomp.split(/,/)

		  if codigo == identificador
			  actualizados.puts "#{descripcion},#{creacion},#{Time.now}"
		  else
			  actualizados.puts "#{descripcion},#{creacion},"
		  end

		  identificador += 1
	  end
  end
end

`mv alimentos.nuevo.txt alimentos.txt` 