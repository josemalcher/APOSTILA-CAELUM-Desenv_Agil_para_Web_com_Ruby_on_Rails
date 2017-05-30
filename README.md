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


[Mais Ruby: classes, objetos e métodos](https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/)

[Voltar ao Índice](#indice)

---

## <a name="parte5"></a>

[Voltar ao Índice](#indice)

---

## <a name="parte6"></a>

[Voltar ao Índice](#indice)

---