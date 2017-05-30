class Restaurante_inic

  attr_accessor :nota
  def initialize (nome)
    puts "criando um novo restaurante #{nome}"
    @nome = nome
  end

  def qualifica(msg = "Obrigado")
    puts "A nota do restaurante #{@nome} foi Nota: #{@nota}. #{msg}"
  end

  # propriedades
=begin
Seria muito trabalhoso definir todas as propriedades de acesso a nossa variáveis. Refatore a classe Restaurante para utilizar o attr_accessor :nota Seu arquivo final deve ficar assim:
  def nota=(nota)
    @nota = nota
  end
  def nota
    @nota
  end
=end
  
end

restautante_um = Restaurante_inic.new("Fasanoo")
restautante_dois = Restaurante_inic.new("FOGO DE CHAO")

restautante_um.nota = 10
restautante_dois.nota = 1

restautante_um.qualifica
restautante_dois.qualifica("Comida SALGADA")

