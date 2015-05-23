File.open('alimentos.txt', 'r') do |registros|
  identificador = 1

  registros.readlines.each do |linea|
    descripcion, creacion, comprado = linea.chomp.split(",")

    printf("Código(%d) %s\n", identificador, descripcion)
    printf(" Agregado : %s\n", creacion)

    if comprado
      printf(" ¡Comprado! %s\n", comprado)
    end

    identificador += 1
  end
end