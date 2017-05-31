class Franquia
  def info
    puts "Restaurante faz parte da franquia"
  end
end

class Restaurante < Franquia
  #sobreescrita método
  def info
    super
    puts "Restaurante do Fasano"
  end
  # metodo importante
  # recebe franquia e invoca o método info
  def informa(franquia)
    franquia.info
  end
end

restaurante = Restaurante.new
# informa restaurante
# restaurante.info
