class Franquia_refatorado_blocos

  def initialize
    @restaurantes = []
  end
  def adiciona(*restaurantes)
    for restaurante in restaurantes
      @restaurantes << restaurante
    end
  end
  # def mostra
  #   for restaurante in @restaurantes
  #     puts restaurante.nome
  #   end
  # end
  def mostra
    @restaurantes.each do |r|
      puts r.nome
    end
  end
  def relatorio
    @restaurantes.each do |r|
      yield r
    end
  end

end

class Restaurante
  attr_accessor :nome
  def fechar_conta(dados)
    puts "Conta dechado no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário : #{dados[:comentario]}"
  end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "RESTAURANTE UM"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "RES FOGO DE CHAO"

franquia = Franquia_refatorado_blocos.new
franquia.adiciona restaurante_um, restaurante_dois
# franquia.adiciona restaurante_dois

franquia.mostra

restaurante_um.fechar_conta valor:30, nota:9, comentario:"Otimo"

franquia.relatorio do |relat|
  puts "Restaurante cadastrado: #{relat.nome}"
end