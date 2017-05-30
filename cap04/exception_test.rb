print "Digite um numero"
numero = gets.to_i

begin
  resultado = 100/numero
rescue
  puts "Numero digitado invalido!"
  exit
end

puts "100/#{numero} é #{resultado}"

# -----

def verifica_idade(idade)
  unless idade > 18
    raise ArgumentError, "Voce precisa ser maior de idade..."
  end
end

verifica_idade(17)


# -----
class IdadeInsuficienteException < Exception
end

def verificaIdade_dois(idade)
  raise IdadeInsuficienteException, "Idade Insuficiente" unless > 18
end

begin
  verificaIdade_dois(15)
rescue IdadeInsuficienteException => e
  puts "Foi lançada a Exception #{e}"
end