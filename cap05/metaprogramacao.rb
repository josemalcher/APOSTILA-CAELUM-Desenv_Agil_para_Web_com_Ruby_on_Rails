class Restaurante
  def initialize(nome)
    puts "Criando um novo restaurante? #{nome}"
    @@total ||= 0
    @@total = @@total + 1
    puts "Restaurante criados: #{@@total}"
    @nome = nome
  end
  # def self.relatorio
  #   puts "Foram criados #{@@total} restaurantes"
  # end
  class << self
    def relatorio
      puts "Foram criados #{@@total} restaurantes"
    end
  end
end
# Faça mais uma chamada

Restaurante.relatorio