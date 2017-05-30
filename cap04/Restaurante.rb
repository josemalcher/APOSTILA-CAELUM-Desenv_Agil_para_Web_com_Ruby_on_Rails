class Restaurante
  def qualifica(nota, msg = "Obrigado")
    puts "A nota do restaurante foi #{}. #{msg}"
  end
end

restautante_um = Restaurante.new
restautante_dois = Restaurante.new

restautante_um.qualifica(10)
restautante_dois.qualifica(2, "Comida veio fria")