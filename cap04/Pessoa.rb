class Pessoa
  def initialize
    puts "Criando nova Pessoa"
  end
  def muda_nome(novo_nome)
    @nome = novo_nome
  end
  def diz_nome
    puts "meu nome é #{@nome}"
  end
end

p = Pessoa.new
p.muda_nome("JOSE")
p.diz_nome