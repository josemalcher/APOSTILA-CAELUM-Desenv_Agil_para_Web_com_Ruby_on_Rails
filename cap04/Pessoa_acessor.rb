class Pessoa_accessor
  def nome
    @nome
  end
  def nome=(novo_nome)
    @nome = novo_nome
  end
end

pessoa = Pessoa_accessor.new
pessoa.nome=("JOSE MALCHER")
puts pessoa.nome