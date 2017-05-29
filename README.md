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
