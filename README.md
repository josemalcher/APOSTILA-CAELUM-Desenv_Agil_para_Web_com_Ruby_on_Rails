# Apostila: Desenv. Ágil para Web com Ruby on Rails

Apostila do curso RR-71  
[Desenv. Ágil para Web com Ruby on Rails](https://www.caelum.com.br/apostila-ruby-on-rails/)

## <a name="indice">Índice</a>

- [Agilidade na Web](#parte1)
- [A linguagem Ruby](#parte2)
- [Ruby básico](#parte3)
- [Mais Ruby: classes, objetos e métodos](#parte4)
- [Metaprogramação](#parte5)
- [Ruby on Rails](#parte6)
- [Active Record](#parte7)
- [Rotas](#parte8)
- [Controllers e Views](#parte9)
- [Completando o Sistema](#parte10)
- [Calculations](#parte11)
- [Associações Polimórficas](#parte12)
- [Mais sobre views](#parte13)
- [Ajax com Rails](#parte14)
- [Algumas Gems Importantes](#parte15)
- [Apêndice: Testes](#parte16)
- [Apêndice: Rotas e Rack](#parte17)
- [Apêndice: Design Patterns em Ruby](#parte18)
- [Apêndice: Integrando Java e Ruby](#parte19)
- [Apêndice: Deployment](#parte20)

---

## <a name="parte1">Agilidade na Web</a>

[Agilidade na Web](https://www.caelum.com.br/apostila-ruby-on-rails/agilidade-na-web/)


[Voltar ao Índice](#indice)

---

## <a name="parte2">A linguagem Ruby</a>

Instalação  
[https://www.ruby-lang.org/pt/](https://www.ruby-lang.org/pt/)

[2.3 - RubyGems](https://www.caelum.com.br/apostila-ruby-on-rails/a-linguagem-ruby/#2-3-rubygems)

O Ruby possui um gerenciador de pacotes bastante avançado, flexível e eficiente: RubyGems. As gems podem ser vistas como bibliotecas reutilizáveis de código Ruby, que podem até conter algum código nativo (em C, Java, .Net). São análogos aos jars no ambiente Java, ou os assemblies do mundo .Net. RubyGems é um sistema gerenciador de pacotes comparável a qualquer um do mundo *NIX, como os .debs do apt-get, os rpms do yum, entre outros.

Após a instalação do Ruby podemos instalar os pacotes necessários para a criação de uma aplicação Rails com o comando rails new:

```
rails new nome_da_aplicacao
```

[2.4 - Bundler](https://www.caelum.com.br/apostila-ruby-on-rails/a-linguagem-ruby/#2-4-bundler-)

Ao desenvolver novas aplicações utilizando Ruby, notaremos que uma série de funcionalidades serão necessárias - ler e parsear JSON, fazer autenticação de usuário, entre outras coisas. A maioria dessas funcionalidades já foi implementada em alguma gem, e para usufruir desses recursos basta colocar a gem em nossa aplicação.

Uma forma eficaz de controlar as dependências de nosso projeto Ruby é utilizar uma gem chamada Bundler. Instalar o bundler é bem simples. Basta rodar o comando:

```
gem install bundler
```
Com o Bundler, declaramos as dependências necessárias em um arquivo chamado Gemfile. Esse aquivo deverá conter, primeiramente, a fonte de onde onde o Bundler deve obter as gems e em seguida a declaração das dependências que usaremos no projeto.
```
source "http://rubygems.org"

gem "rails"
gem "devise"
```

Podemos então rodar o comando bundle (atalho para o comando bundle install) para obter as gems necessárias para o nosso projeto.

```
gem "rails", "4.0.0"

ou

gem "rails", "~> 4.0.0"
```
Ao rodar o comando bundle será gerado um novo arquivo chamado Gemfile.lock, que especifica todas as gems obtidas para aquele Gemfile e sua respectiva versão baixada. O Gemfile.lock é uma boa alternativa para congelar as versões das gems a serem utilizadas, uma vez que ao rodarmos o comando bundle sobre a presença de um Gemfile.lock, as versões presentes nesse arquivo serão utilizadas para especificar as gems a serem baixadas.

[A linguagem Ruby](https://www.caelum.com.br/apostila-ruby-on-rails/a-linguagem-ruby/)

[Voltar ao Índice](#indice)

---

## <a name="parte3">Ruby básico</a>

[3.2 - Executando código Ruby no Terminal: IRB e arquivos .rb](https://www.caelum.com.br/apostila-ruby-on-rails/ruby-basico/#3-2-executando-codigo-ruby-no-terminal-irb-e-arquivos-rb)

O IRB é um dos principais recursos disponíveis aos programadores Ruby. Funciona como um console/terminal, e os comandos vão sendo interpretados ao mesmo tempo em que vão sendo inseridos, de forma interativa. O irb avalia cada linha inserida e já mostra o resultado imediatamente.

3.3 - Variáveis, Strings e Comentários

Podemos imprimir uma mensagem com ruby utilizando pelo menos 3 opções: puts, print e p.

```ruby
puts "Olá Mundo"
print "Olá Mundo"
p "Olá Mundo"
```

Comentários em Ruby podem ser de uma linha apenas:

```ruby
# Imprime uma mensagem
puts "Oi mundo"

```
Ou comentários de blocos:
```ruby
=begin
  Imprime uma mensagem
=end
puts "Oi mundo"

```

3.4 - Variáveis e atribuições

```ruby
ano = 1980
```
A variável ano é do tipo Fixnum, um tipo do Ruby que representa números inteiros. Mas não informamos isso na declaração da variável ano, isso porque na linguagem Ruby não é necessária esse tipo de informação, já que o interpretador da linguagem infere o tipo da variável automaticamente durante a execução do código. Esta característica é conhecida como inferência de tipos.

gets

O Ruby nos permite atribuir numa variável um valor digitado no console através do teclado, isso é feito através do método %gets%, mas com ele só poderemos atribuir Strings%%, veremos como atribuir outros tipos adiante. Exemplo:

```ruby
irb(main):001:0> nome = gets
José
=> "José\n"
```

3.5 - Tipagem

Ruby também é implicitamente e dinamicamente tipada, implicitamente tipada pois os tipos são inferidos pelo interpretador, não precisam ser declarados e dinamicamente tipada porque o Ruby permite que o tipo da variável possa ser alterado durante a execução do programa

```ruby
idade = 27
idade = "27"
```

Em Ruby temos a possibilidade de descobrir o tipo de uma variável utilizando o .class:

```ruby
irb(main):001:0> num = 87
=> 87
irb(main):002:0> puts num.class
Fixnum
=> nil
```

3.7 - String
```ruby
irb(main):001:0> mensagem = "Olá Mundo"    
=> "Olá Mundo"
irb(main):002:0> mensagem = 'Olá Mundo'
=> "Olá Mundo"
```

Strings em Ruby é que são mutáveis, diferente do Java, por exemplo.

```ruby
irb(main):001:0> mensagem = "Bom dia, "
=> "Bom dia,"
irb(main):002:0> mensagem << " tudo bem?"
=> "Bom dia, tudo bem?"
irb(main):003:0> puts mensagem
Bom dia, tudo bem?
=> nil
```

O operador << é utilizado para a operação append de Strings, ou seja, para a concatenação de Strings em uma mesma instância. Já o operador + também concatena Strings mas não na mesma instância, isso quer dizer que o + gera novas Strings.

```ruby
#Declaração da variável %%nome%%
print "Nome do restaurante: "
puts nome
```
```ruby
#Declaração da variável %%nome%%
print "Nome do restaurante: #{nome}"
```

Basta colocar dentro da String a variável entre as chaves, em #{}. Mas fique atento, com Strings definidas com aspas simples não é possível fazer uso da interpolação, por isso prefira sempre o uso de String com aspas duplas.

Prefira sempre a interpolação ao invés da concatenação (+) ou do append (<<). É mais elegante e mais rápido.

O método capitalize

```ruby
irb(main):001:0> nome = "fasano"    
=> "fasano"
irb(main):002:0> puts nome.capitalize
Fasano
=> nil

nome = "fasano"
puts nome.capitalize #Fasano
puts nome #fasano
```

Os métodos terminados em bang(!)

```ruby
nome = "fasano"
puts nome.capitalize! #Fasano
puts nome #Fasano
```

3.9 - Tipos e operações básicas

```ruby
irb(main):001:0> 3*(2+5)/8
=> 2
```

3 tipos numéricos básicos: Fixnum, Bignum e Float Fixnum é o tipo principal para números inteiros.

Números inteiros muito grandes são convertidos automaticamente para Bignum, de forma a não sofrerem perda de precisão

```ruby 
irb(main):002:0> 9999999999999999999.class
=> Bignum
```

```ruby
irb(main):003:0> 15.0.class
=> Float
```

- \+ Soma
- \- Subtração
- \/ Divisão
- \* Multiplicação
- \** Potência
- \% Modulo (retorna o resto de uma divisão)

```ruby
irb(main):001:0> 2 + 2
=> 4
irb(main):002:0> 5 - 3
=> 2
irb(main):003:0> 10 / 2
=> 5
irb(main):004:0> 15 * 2
=> 30
irb(main):005:0> 3 ** 2
=> 9
```

Fazer uma divisão cujo resultado não seja um número inteiro, este será arredondado para baixo!

```ruby
irb(main):001:0> 15/2
=> 7
```
Pare resolver esse problema, podemos usar um Float no lugar de Fixnum, em qualquer lado da operação:

```ruby
irb(main):002:0> 15.0 / 2
=> 7.5
```

Ranges

Ruby fornece uma maneira de trabalharmos com sequências de uma forma bem simples: (1..3) # range representando números de 1 a 3. ('a'..'z') # range representando letras minúsculas do alfabeto (0...5) # range representando números de 0 a 4.

Símbolos

Símbolos também são texto, como as Strings. Só que devem ser precedidos do carácter ':', ao invés de aspas e pertencem à classe Symbol:

```ruby
>> puts :simbolo
simbolo
=> nil
>> :simbolo.class
=> Symbol
```
[Símbolos](https://www.caelum.com.br/apostila-ruby-on-rails/ruby-basico/#3-9-tipos-e-operacoes-basicas)

3.11 - Estruturas de controle

```ruby
>> 3 > 2
=> true
>> 3+4-2 <= 3*2/4
=> false
```

```ruby
>> variavel = nil
=> nil
>> if(variavel)
>>   puts("so iria imprimir se variavel != null")
>> end
=> nil
>> if(3 == 3)
>>   puts("3 é 3")
>> end
3 é 3
=> nil
```

```ruby
def procura_sede_copa_do_mundo( ano )
  case ano
  when 1895..2005
    "Não lembro... :)"
  when 2006
    "Alemanha"
  when 2010
    "África do Sul"
  when 2014
    "Brasil"
  end
end

puts procura_sede_copa_do_mundo(1994)
```

Ruby possui bom suporte a expressões regulares, fortemente influenciado pelo Perl. Expressões regulares literais são delimitadas por / (barra).

```ruby
>> /rio/ =~ "são paulo"
=> nil
>> /paulo/ =~ "são paulo"
=> 4
```
O operador =~ faz a função de match e retorna a posição da String onde o padrão foi encontrado, ou nil caso a String não bata com a expressão regular.

[http://rubular.com/](http://rubular.com/)

Operador ou igual

O operador ||= atribui um valor apenas a variável esteja vazia. é muito utilizado para carregar valores de maneira "lazy".

```ruby
nome ||= "anonimo"
```

Nesse caso, se nome é nulo, ele será preenchido com "anonimo".


[Ruby básico](https://www.caelum.com.br/apostila-ruby-on-rails/ruby-basico/)

[Voltar ao Índice](#indice)

---

## <a name="parte4">Mais Ruby: classes, objetos e métodos</a>

Ruby é considerada uma linguagem puramente orientada a objetos, já que tudo em Ruby é um objeto (inclusive as classes)

Existe um método chamado class(), que retorna o tipo do objeto, enquanto object_id(), retorna o número da referência, ou identificador único do objeto dentro da memória heap.

Aaquele que "transforma" um objeto em uma String, to_s().

Para criar um objeto em Ruby:

```ruby
# criando um objeto
objeto = Object.new()
```

4.3 - Definição de métodos

def é uma palavra chave do Ruby para a definição (criação) de métodos, que podem, claro, receber parâmetros:

```ruby
def pessoa.vai(lugar)
  puts "indo para " + lugar
end
```

a seguir mostra um método que devolve uma String:

```ruby
def pessoa.vai(lugar)
  "indo para " + lugar
end

puts pessoa.vai("casa")

# REFATORANDO

def pessoa.vai(lugar)
  "indo para #{lugar}"
end

# Vários Argumentos

def pessoa.troca(roupa, lugar)
  "trocando de #{roupa} no #{lugar}"
end

# invocação dos métodos

pessoa.troca('camiseta', 'banheiro')

# Com Valores padrões

def pessoa.troca(roupa, lugar='banheiro')
  "trocando de #{roupa} no #{lugar}"
end

# invocação sem o parametro:
pessoa.troca("camiseta")

# invocação com o parametro:
pessoa.troca("camiseta", "sala")
```

4.5 - Discussão: Enviando mensagens aos objetos
```ruby
pessoa.send(:fala)
```

O método send recebe como argumento o nome do método a ser invocado, que pode ser um símbolo ou uma string. De acordo com a orientação a objetos é como se estivéssemos enviando a mensagem "fala" ao objeto pessoa.

4.6 - Classes

```ruby
class Pessoa
  def fala
    puts "Sei Falar"
  end

  def troca(roupa, lugar="banheiro")
    "trocando de #{roupa} no #{lugar}"
  end
end

p = Pessoa.new
# o objeto apontado por p já nasce com os métodos fala e troca.
```

O diferencial de classes em Ruby é que são abertas. Ou seja, qualquer classe pode ser alterada a qualquer momento na aplicação. Basta "reabrir" a classe e fazer as mudanças:

```ruby
class Pessoa
  def novo_metodo
    # ...
  end
end
```

Caso a classe Pessoa já exista estamos apenas reabrindo sua definição para adicionar mais código. Não será criada uma nova classe e nem haverá um erro dizendo que a classe já existe.

```ruby
class Restaurante
  def qualifica(nota, msg="Obrigado")
    puts "A nota do restaurante foi #{nota}. #{msg}"
  end
end

restaurante_um = Restaurante.new
restaurante_dois = Restaurante.new

restaurante_um.qualifica(10)
restaurante_dois.qualifica(1, "Ruim!")

```

4.8 - Desafio: Classes abertas

Qualquer classe em Ruby pode ser reaberta e qualquer método redefinido. Inclusive classes e métodos da biblioteca padrão, como Object e Fixnum.

```ruby
class Fixnum
  def +(outro)
    self - outro # fazendo a soma subtrair
  end
end
```

4.9 - self

 É análogo ao this de outras linguagens como Java
 
 Todo método em Ruby é chamado em algum objeto, ou seja, um método é sempre uma mensagem enviada a um objeto. Quando não especificado, o destino da mensagem é sempre self:
 
 ```ruby
class Conta
  def transfere_para(destino, quantia)
    debita quantia
    # mesmo que self.debita(quantia)

    destino.deposita quantia
  end
end
```

4.11 - Atributos e propriedades: acessores e modificadores

Atributos, também conhecidos como variáveis de instância, em Ruby são sempre privados e começam com @. Não há como alterá-los de fora da classe; apenas os métodos de um objeto podem alterar os seus atributos (encapsulamento!).

```ruby
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
````

Os initializers são métodos privados (não podem ser chamados de fora da classe) e podem receber parâmetros. Veremos mais sobre métodos privados adiante.
```ruby
class Pessoa
  def initialize(nome)
    @nome = nome
  end
end

joao = Pessoa.new("João")
```

Métodos acessores e modificadores são muito comuns e dão a ideia de propriedades. Existe uma convenção para a definição destes métodos, que a maioria dos desenvolvedores Ruby segue (assim como Java tem a convenção para getters e setters):

```ruby
class Pessoa
  def nome # acessor
    @nome
  end

  def nome=(novo_nome)
    @nome = novo_nome
  end
end

pessoa = Pessoa.new
pessoa.nome=("José")
puts pessoa.nome
# => "José"
```

4.12 - Syntax Sugar: facilitando a sintaxe

```ruby
pessoa.nome = "José"
```
Apesar de parecer, a linha acima não é uma simples atribuição, já que na verdade o método nome= está sendo chamado. Este recurso é conhecido como Syntax Sugar, já que o Ruby aceita algumas exceções na sintaxe para que o código fique mais legível.

Prática

```ruby
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


```

4.14 - Coleções

Arrays em Ruby são instâncias da classe Array, não sendo simplesmente uma estrutura de dados, mas possuindo diversos métodos auxiliares que nos ajudam no dia-a-dia.

```ruby
lista = Array.new
lista << "RR-71"
lista << "RR-75"
lista << "FJ-91"

puts lista.size
# => 3
```

resgatar os elementos e para isso usamos [] passando um índice como parametro:

```ruby
puts lista[1]
# => "RR-75"
puts lista[0]
# => "RR-71"
```

```ruby
lista = [1, 2, "string", :simbolo, /$regex^/]
puts lista[2]
# => string
```

Um exemplo que demonstra uma aparição de arrays é a chamada ao método methods, que retorna uma array com os nomes de todos os métodos que o objeto sabe responder naquele instante. Esse método é definido na classe Object então todos os objetos o possuem:

```ruby
cliente = "Petrobras"

puts cliente.methods
```

4.15 - Exemplo: múltiplos parâmetros

```ruby
def compra(produto1, produto2, produto3, produtoN)
end

#ou - Para receber um número qualquer de parâmetros usamos a sintaxe * do Ruby:

def compra(*produtos)
  # produtos é uma array
  puts produtos.size
end

```

```ruby
def compra(produtos)
  # produtos é uma array
  puts produtos.size
end
compra( ["Notebook", "Pendrive", "Cafeteira"] )
```

O operador " * " é chamado de splat.
 
4.16 - Hashes

Ruby também tem uma estrutura indexada por qualquer objeto, onde as chaves podem ser de qualquer tipo, o que permite atingir nosso objetivo. A classe Hash é quem dá suporte a essa funcionalidade, sendo análoga aos objetos HashMap, HashTable, arrays indexados por String e dicionários de outras linguagens.

```ruby
config = Hash.new
config["porta"] = 80
config["ssh"] = false
config["nome"] = "Caelum.com.br"

puts config.size
# => 3

puts config["ssh"]
# => false
```

Por serem únicos e imutáveis, símbolos são ótimos candidatos a serem chaves em Hashes, portanto poderíamos trabalhar com:

```ruby
config = Hash.new
config[:porta] = 80
```

 existe um movimento que se tornou comum com a popularização do Rails 2, passando parâmetro através de hash:
 
 ```ruby
aluno.transfere( {destino: escola, data: Time.now, valor: 50.00} )

```

Note que o uso do Hash implicou em uma legibilidade maior apesar de uma proliferação de palavras:

```ruby
def transfere(argumentos)
  destino = argumentos[:destino]
  data = argumentos[:data]
  valor = argumentos[:valor]
  # executa a transferência
end
```
```ruby
class Conta
  def transfere(valor, argumentos)
    destino = argumentos[:para]
    data = argumentos[:em]
    # executa a transferência
  end
end

aluno.transfere(50.00, {para: escola, em: Time.now})

# VERSÂO ANTERIOR 1.9

aluno.transfere(50.00, {:para => escola, :em => Time.now})
```
Além dos parênteses serem sempre opcionais, quando um Hash é o último parâmetro de um método, as chaves podem ser omitidas (Syntax Sugar).
```ruby
 aluno.transfere destino: escola, valor: 50.0, data: Time.now
```

Prática (franquia.rb)
```ruby
class Franquia
  def initialize
    @restaurantes = []
  end
  def adiciona(*restaurantes)
    for restaurante in restaurantes
      @restaurantes << restaurante
    end
  end
  def mostra
    for restaurante in @restaurantes
      puts restaurante.nome
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

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois
# franquia.adiciona restaurante_dois

franquia.mostra

restaurante_um.fechar_conta valor:30, nota:9, comentario:"Otimo"
```

4.18 - Blocos e Programação Funcional

```ruby
class Banco
  
  def initialize(contas)
    @contas = contas
  end
  
  def status
    saldo = 0
    for conta in @contas
      saldo += conta
    end
    saldo
  end
  
end

banco = Banco.new([200, 300, 400])
banco.status
```

[4.18 - Blocos e Programação Funcional](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-18-blocos-e-programacao-funcional)

```ruby
class Banco
  def initialize(contas)
    @contas = contas
  end
  def status(&block)
    saldo = 0
    for conta in @contas
      saldo += conta
      block.call(saldo)
    end
    saldo
  end
end

banco = Banco.new([200,300, 400])
# puts banco.status

banco.status do |saldo_parcial|
  puts saldo_parcial
end
```
Note que block é um objeto que ao ter o método call invocado, chamará o bloco que foi passado, concluindo nosso primeiro objetivo: dar a chance de quem se interessar no saldo parcial, fazer algo com ele.

```ruby
class Banco
  def initialize(contas)
    @contas = contas
  end
  def status(&block)
    saldo = 0
    for conta in @contas
      saldo += conta
      if block_given?
        block.call(saldo)
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
```

Como vimos até aqui, o método que recebe um bloco pode decidir se deve ou não chamá-lo. Para chamar o bloco associado, existe uma outra abordagem com a palavra yield:

```ruby
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
```

Dizer que estamos passando uma função (pedaço de código) como parâmetro a outra função é o mesmo que passar blocos na chamada de métodos.

Para iterar em uma Array possuímos o método each, que chama o bloco de código associado para cada um dos seus items, passando o item como parâmetro ao bloco:

```ruby
lista = ["rails", "rake", "ruby", "rvm"]
lista.each do |programa|
  puts programa
end
```

```ruby
funcionarios = ["Guilherme", "Sergio", "David"]
nomes_maiusculos = []

for nome in funcionarios
  nomes_maiusculos << nome.upcase
end

# --->> Poderíamos usar o método each:

funcionarios = ["Guilherme", "Sergio", "David"]
nomes_maiusculos = []

funcionarios.each do |nome|
  nomes_maiusculos << nome.upcase
end
```

```ruby
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
```

[Entendendo Blocks, Procs e Lambdas no Ruby](https://imasters.com.br/artigo/21247/ruby/entendendo-blocks-procs-e-lambdas-no-ruby/?trace=1519021197&source=single)

[Conceitos na prática: Ruby block (yield)](https://brizeno.wordpress.com/2013/10/01/conceitos-na-pratica-ruby-block-yield/)


### 4.22 - Manipulando erros e exceptions

- RuntimeError : É a exception padrão lançada pelo método raise.
- NoMethodError : Quando um objeto recebe como parametro de uma mensagem um nome de método que não pode ser encontrado.
- NameError : O interpretador não encontra uma variável ou método com o nome passado.
- IOError : Causada ao ler um stream que foi fechado, tentar escrever em algo read-only e situações similares.
- Errno::error : É a família dos erros de entrada e saída (IO).
- TypeError : Um método recebe como argumento algo que não pode tratar.
- ArgumentError : Causada por número incorreto de argumentos.

```ruby
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
```

Para saber mais: Throw e catch

```ruby
def pesquisa_banco(nome)
  if nome.size < 10
    throw :nome_invalido, "Nome invalido, digite novamente"
  end
  # executa a pesquisa
  "cliente #{nome}"
end

def executa_pesquisa(nome)
  catch :nome_invalido do
    cliente = pesquisa_banco(nome)
    return cliente
  end
end

puts executa_pesquisa("ana")
# => "Nome invalido, digite novamente"

puts executa_pesquisa("guilherme silveira")
# => cliente guilherme silveira
```

4.24 - Arquivos com código fonte ruby

Agora podemos acessar uma conta bastando primeiro importar o arquivo que a define:

```ruby
require 'conta'

puts Conta.new(500).saldo
```

Uma forma de carregar o arquivo sem especificar o diretório atual é utilizando a forma abaixo:

```ruby
require File.expand_path(File.join(File.dirname(__FILE__), 'nome_do_arquivo'))
```

Assim como qualquer outra linguagem isso resulta em um possível Load Hell, onde não sabemos exatamente de onde nossos arquivos estão sendo carregados. Tome bastante cuidado para a configuração de seu ambiente.

O comando require carrega o arquivo apenas uma vez. Para executar a interpretação do conteúdo do arquivo diversas vezes, utilize o método load.

```ruby
load 'conta.rb'
load 'conta.rb'
# executado duas vezes!
```

4.25 - Para saber mais: um pouco de IO

```ruby
print "Escreva um texto: " 
texto = gets
File.open( "caelum.txt", "w" ) do |f| 
  f << texto 
end
```
```ruby
Dir.entries('caelum').each do |file_name|
   idea = File.read( file_name )
   puts idea
end
```
Podemos lidar de maneira similar com requisições HTTP utilizando o código abaixo e imprimir o conteúdo do resultado de uma requisição:
```ruby
require 'net/http' 
Net::HTTP.start( 'www.caelum.com.br', 80 ) do |http| 
    print( http.get( '/' ).body ) 
end
```

[Mais Ruby: classes, objetos e métodos](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/)

[Voltar ao Índice](#indice)

---

## <a name="parte5">Metaprogramação</a>

5.1 - Métodos de Classe

Classes em Ruby também são objetos:

```ruby
Pessoa.class
# => Class

c = Class.new
instancia = c.new
```

Variáveis com letra maiúscula representam constantes em Ruby, que até podem ser modificadas, mas o interpretador gera um warning. Portanto, Pessoa é apenas uma constante que aponta para um objeto do tipo Class.

Se classes são objetos, podemos definir métodos de classe como em qualquer outro objeto:

```ruby
class Pessoa
  # ...
end

def Pessoa.pessoas_no_mundo
  100
end

Pessoa.pessoas_no_mundo
# => 100
```

5.2 - Para saber mais: Singleton Classes

A definição class << object define as chamadas singleton classes em ruby. Por exemplo, uma classe normal em ruby poderia ser:

```ruby
class Pessoa
  def fala
    puts 'oi'
  end
end

p = Pessoa.new
p.fala   # imprime 'oi'
```

Entretanto, também é possível definir métodos apenas para esse objeto "p", pois tudo em ruby, até mesmo as classes, são objetos, fazendo:

```ruby
def p.anda
  puts 'andando'
end
```

O método "anda" é chamado de singleton method do objeto "p".

Um singleton method "vive" em uma singleton class. Todo objeto em ruby possui 2 classes:

- a classe a qual foi instanciado
- sua singleton class

A singleton class é exclusiva para guardar os métodos desse objeto, sem compartilhar com outras instâncias da mesma classe.

Existe uma notação especial para definir uma singleton class:

```ruby
class << Pessoa
  def anda
    puts 'andando'
  end
end
```

Definindo o código dessa forma temos o mesmo que no exemplo anterior, porém definindo o método anda explicitamente na singleton class.É possível ainda definir tudo na mesma classe:

```ruby
class Pessoa
  class << self
    def anda
      puts 'andando'
    end
  end
end

Pessoa.anda
```

Método de Classe é diferente de static do Java

Se você trabalha com java pode confundir o self com o static. Cuidado! O método definido como self roda apenas na classe, não funciona nas instâncias. Você pode testar fazendo:

```ruby
Restaurante.relatorio
restaurante_um.relatorio
```

A invocação na instância dará um: NoMethodError: undefined method 'relatorio' for #<Restaurante:0x100137b48 @nome="Fasano", @nota=10>

5.4 - Convenções

Métodos que retornam booleanos costumam terminar com ?, para que pareçam perguntas aos objetos:

```ruby
texto = "nao sou vazio"
texto.empty? # => false
```

Métodos que tem efeito colateral (alteram o estado do objeto, ou que costumem lançar exceções) geralmente terminam com ! (bang):

```ruby
conta.cancela!
```

A comparação entre objetos é feita através do método == (sim, é um método!)

```ruby
class Pessoa
  def ==(outra)
    self.cpf == outra.cpf
  end
end
```
Nomes de variável e métodos em Ruby são sempre minúsculos e separados por '_' (underscore).

Variáveis com nomes maiúsculo são sempre constantes.

Para nomes de classes, utilize as regras de CamelCase, afinal nomes de classes são apenas constantes.

### 5.5 - Polimorfismo

```ruby
class Animal
  def come
    "comendo"
  end
end

class Pato < Animal
  def quack
    "Quack!"
  end
end

pato = Pato.new
pato.come # => "comendo"
```

A tipagem em Ruby não é explícita, por isso não precisamos declarar quais são os tipos dos atributos. Veja este exemplo:

```ruby
class PatoNormal
  def faz_quack
    "Quack!"
  end
end

class PatoEstranho
  def faz_quack
    "Queck!"
  end
end

class CriadorDePatos
  def castiga(pato)
    pato.faz_quack
  end
end

pato1 = PatoNormal.new
pato2 = PatoEstranho.new
c = CriadorDePatos.new
c.castiga(pato1) # => "Quack!"
c.castiga(pato2) # => "Queck!"
```

Para o criador de patos, não interessa que objeto será passado como parâmetro. Para ele basta que o objeto saiba fazer quack. Esta característica da linguagem Ruby é conhecida como Duck Typing.

5.7 - Modulos

```ruby
module Caelum
  module Validadores

    class ValidadorDeCpf
      # ...
    end

    class ValidadorDeRg
      # ...
    end

  end
end

validador = Caelum::Validadores::ValidadorDeCpf.new
```

Ou como mixins, conjunto de métodos a ser incluso em outras classes:

```ruby
module Comentavel
  def comentarios
    @comentarios ||= []
  end

  def recebe_comentario(comentario)
    self.comentarios << comentario
  end
end

class Revista
  include Comentavel
  # ...
end

revista = Revista.new
revista.recebe_comentario("muito ruim!")
puts revista.comentarios
```

5.8 - Metaprogramação

Por ser uma linguagem dinâmica, Ruby permite adicionar outros métodos e operações aos objetos em tempo de execução.

```ruby
pessoa = Object.new()
```

```ruby
pessoa = Object.new()

def pessoa.fala()
  puts "Sei falar"
end

pessoa.fala()
```

 Meta-programação é a capacidade de gerar/alterar código em tempo de execução. Note que isso é muito diferente de um gerador de código comum, onde geraríamos um código fixo, que deveria ser editado na mão e a aplicação só rodaria esse código posteriormente.
 
 ```ruby
class Aluno
  # nao sabe nada
end

class Professor
  def ensina(aluno)
    def aluno.escreve
      "sei escrever!"
    end
  end
end

juca = Aluno.new
juca.respond_to? :escreve
# => false

professor = Professor.new
professor.ensina juca
juca.escreve
# => "sei escrever!"
```

```ruby
class Pessoa
  attr_accessor :nome
end

p = Pessoa.new
p.nome = "Joaquim"
puts p.nome
# => "Joaquim"
```
A chamada do método de classe attr_acessor, define os métodos nome e nome= na classe Pessoa.

A técnica de código gerando código é conhecida como metaprogramação, ou metaprogramming, como já definimos.

Como visto, por padrão todos os métodos são públicos. O método de classe private altera a visibilidade de todos os métodos definidos após ter sido chamado:

```ruby
class Pessoa
  
  private
  
  def vai_ao_banheiro
    # ...
  end
end
```

Todos os métodos após a chamada de private são privados. Isso pode lembrar um pouco C++, que define regiões de visibilidade dentro de uma classe (seção pública, privada, ...). Um método privado em Ruby só pode ser chamado em self e o self deve ser implícito. Em outras palavras, não podemos colocar o self explicitamente para métodos privados, como em self.vai_ao_banheiro.

Caso seja necessário, o método public faz com que os métodos em seguida voltem a ser públicos:

```ruby
class Pessoa
  
  private
  def vai_ao_banheiro
    # ...
  end
  
  public
  def sou_um_metodo_publico
    # ...
  end
end
```

O último modificador de visibilidade é o protected. Métodos protected só podem ser chamados em self (implícito ou explícito). Por isso, o protected do Ruby acaba sendo semelhante ao protected do Java e C++, que permitem a chamada do método na própria classe e em classes filhas.



[Metaprogramação](https://www.caelum.com.br/apostila-ruby-on-rails/metaprogramacao/)

[Voltar ao Índice](#indice)

---

## <a name="parte6"></a>

[Voltar ao Índice](#indice)

---