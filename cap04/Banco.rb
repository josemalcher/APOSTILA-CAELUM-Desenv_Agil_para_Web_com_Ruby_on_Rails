class Banco
  def initialize(contas)
    @contas = contas
  end
  def status(&block)
    saldo = 0
    for conta in @contas
      saldo += conta
      if block_given?
        yield(saldo)
      end
    end
    saldo
  end
end

banco = Banco.new([200,300, 400])
# puts banco.status

banco.status do |saldo_parcial|
  puts saldo_parcial
end

# OU

banco.status { |saldo_parcial| puts saldo_parcial }