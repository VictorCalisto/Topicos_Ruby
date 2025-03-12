# Guia de Ruby e Rails

Esta "lousa" apresenta a estrutura de conhecimento organizada em blocos correlacionados, respeitando as dependências de aprendizado: do básico de Ruby até os tópicos avançados de Rails.

---

## Parte I: Ruby

### 1. Introdução ao Ruby
- **O que é Ruby?**
  - Conceito da linguagem
  - Características principais (simplicidade, elegância, produtividade)
- **Instalação do Ruby**
  - Instalação no Linux/Ubuntu
  - Utilização de gerenciadores de versão: RVM e rbenv

### 2. Fundamentos da Linguagem Ruby
- **Características Básicas**
  - Tipagem dinâmica
  - Tipagem forte
  - Suporte para verificação estática
- **Estruturas de Dados**
  - Tipos básicos: números, strings, booleanos
  - Arrays
  - Ranges
  - Hashes
  - Símbolos
  - Expressões regulares
- **Controle de Fluxo e Estruturas**
  - Estruturas condicionais: `if`, `unless`, `case`
  - Laços de repetição: `while`, `until`, `for`, `each`
  - Operadores lógicos: `and`, `or`, `not`, `&&`, `||`, `!`
  - Blocos de código
  - Tratamento de exceções com `begin`, `rescue`, `ensure`

### 3. Programação Orientada a Objetos com Ruby
- **Definição e Utilização de Métodos**
- **Criação de Classes e Objetos**
- **Utilização de Módulos**
  - Inclusão e mixins
- **Uso de Procs e Lambdas**
- **Conceitos de Encapsulamento, Herança e Polimorfismo**

### 4. Conceitos Avançados e Paralelismo em Ruby
- **Execução Paralela**
  - Threads
  - Fibers
  - Continuations
- **Otimização e Medição de Performance**
  - Realização de Benchmarks
  - Just-In-Time Compilation (JIT)

### 5. Gerenciamento e Distribuição de Código
- **RubyGems**
  - Gerenciamento de bibliotecas e dependências
- **Criação de Gems**
  - Estrutura de uma Gem
  - Publicação de Gems
- **Geração de Documentação**
  - Ferramentas para documentação automática do código

### 6. Entrada e Saída (I/O) e Manipulação de Dados
- **Manipulação de Arquivos**
  - Leitura e escrita de arquivos
  - Operações com FileUtils (movimentação, cópia, remoção de arquivos e diretórios)
  - Manipulação de arquivos Zip
- **Trabalhando com Formatos de Dados**
  - XML e XSLT
  - JSON
  - YAML
- **Protocolos de Comunicação**
  - TCP
  - UDP
  - SMTP
  - POP3
  - FTP
  - HTTP
  - HTTPS
  - SSH
- **Processos do Sistema Operacional**
  - Execução e gerenciamento de processos

### 7. Testes e Qualidade de Código
- **Testes Unitários**
  - Uso do RSpec para testes unitários
- **Ferramentas de Apoio a Testes e Qualidade**
  - Guard: execução automática de testes
  - FactoryBot: criação de objetos de teste
  - Capybara: testes de integração e aceitação
  - SimpleCov: medição da cobertura dos testes
  - Brakeman: análise de segurança do código

---

## Parte II: Ruby on Rails

### 1. Introdução ao Rails
- **O que é Rails?**
  - Conceito do framework
  - Vantagens e características do Rails
- **Princípios Fundamentais**
  - DRY (Don't Repeat Yourself)
  - ORM (Object-Relational Mapping)
  - MVC (Model-View-Controller)
- **Instalação do Rails**
  - Instalação do framework
  - Criação de um novo projeto Rails

### 2. Estrutura do Projeto Rails
- **Organização de Arquivos e Diretórios**
  - Diretório `app` com subpastas: `models`, `views`, `controllers`, `helpers`, `jobs`, `mailers`
  - Diretório `config` com configurações gerais
  - Diretório `db` para Migrations, `schema.rb` e Fixtures
  - Diretórios para assets: `assets`, `public`
- **Conceito de Rack**
- **Configuração dos Ambientes do Rails**
  - Ambiente de desenvolvimento
  - Ambiente de teste
  - Ambiente de produção
- **Inicialização do Servidor Rails**

### 3. Desenvolvimento Básico da Aplicação Rails
- **Configurações Iniciais**
  - Configuração de pluralização de recursos
  - Configuração de timezone
  - Configuração do Logger para registros de eventos
- **Criação de Recursos e Funcionalidades**
  - Uso do Scaffold para geração automática de modelos, controllers e views
  - Criação e execução de Migrations para gerenciamento do banco de dados
  - Configuração do Asset Pipeline para gerenciar arquivos CSS, JavaScript e imagens

### 4. Active Record e Banco de Dados no Rails
- **Configuração e Gerenciamento do Banco de Dados**
  - Configuração do arquivo `database.yml`
  - Criação e execução de Migrations
  - Geração e utilização do arquivo `schema.rb`
- **Testes de Banco de Dados**
  - Uso de Fixtures para testes

### 5. Controllers, Views e Roteamento
- **Controllers**
  - Definição de ações (index, show, new, create, edit, update, destroy)
  - Utilização de callbacks (before_action, after_action)
  - Gerenciamento de sessões e autenticação básica
- **Views**
  - Criação de layouts e templates (ERB, Haml ou Slim)
  - Uso de Helpers para simplificar a renderização
  - Implementação de Presenters para organizar a lógica de apresentação
- **Roteamento**
  - Configuração do arquivo `routes.rb`
  - Implementação completa do padrão REST (rotas para cada ação)

### 6. Active Record Avançado e Manipulação de Dados
- **Associações Entre Modelos**
  - Associação um-para-um
  - Associação um-para-muitos
  - Associação muitos-para-muitos
  - Associação muitos-para-muitos utilizando a opção `through`
  - Associação polimórfica
- **Otimização de Consultas**
  - Utilização de Joins para combinar tabelas
  - Utilização de Includes para carregamento antecipado (eager loading)
  - Diferenças e aplicação de Pluck versus Select
- **Uso de Callbacks e Escopos**
  - Callbacks para validação e processamento antes e depois de salvar registros
  - Definição de escopos para consultas específicas

### 7. Funcionalidades Avançadas do Rails
- **Recursos do ActiveSupport e Helpers**
  - Métodos auxiliares e extensões da linguagem
- **Integração de Tecnologias em Tempo Real**
  - Uso do Turbo para atualizações dinâmicas na interface
  - Configuração e utilização do ActionCable para WebSockets
- **Estratégias de Caching**
  - Implementação do SolidCache para cache de dados
  - Configuração do Russian Doll Caching para cache aninhado
  - Configuração do HTTP Caching para respostas de API

### 8. Comunicação Externa e Envio de E-mails
- **E-mails com Rails**
  - Configuração e uso de Mailers para envio de e-mails
  - Manipulação de anexos em e-mails
  - Definição e utilização de enums para controle de estados
  - Criação de jobs para processamento em background com SolidQueue
- **Implementação de Funcionalidades de E-commerce**
  - Gerenciamento da quantidade em estoque de produtos
  - Configuração e manipulação de sessões para carrinho de compras
  - Criação, atualização e remoção de produtos no carrinho
  - Processamento da compra de um produto
  - Finalização de pedidos e travamento de registros para garantir consistência

### 9. Construindo APIs com Rails
- **Desenvolvimento de APIs**
  - Criação de endpoints para APIs
  - Versionamento da API para gerenciar atualizações
  - Autenticação de acesso às APIs (token, OAuth ou outra estratégia)
  - Definição de permissões e controle de acesso aos recursos
  - Implementação de rate limiting para controle de uso
  - Desenvolvimento de APIs seguindo os padrões REST e RESTful

### 10. Deploy e Infraestrutura para Aplicações Rails
- **Preparação para Deploy**
  - Uso do Kamal para automatização do deploy
  - Configuração do sistema operacional (Linux/Ubuntu)
  - Configuração de acesso via SSH para administração remota
  - Uso do RVM para gerenciamento de versões do Ruby no servidor
- **Configuração do Servidor Web**
  - Instalação e configuração do servidor web específico para Rails
  - Criação e configuração de um usuário para gerenciamento do servidor
  - Configuração do banco de dados no ambiente de produção
  - Configuração do método de login no servidor
  - Implementação de deploy automatizado utilizando ferramentas de deploy
  - Monitoramento e gerenciamento de logs da aplicação

### 11. Ferramentas Extras e Complementares
- **Visualização e Estilização**
  - Uso do Chartkick para criação de gráficos e visualização de dados
  - Integração com o Bootstrap para estilização das interfaces
- **Complementos para Desenvolvimento**
  - Outras ferramentas e bibliotecas que possam aprimorar a aplicação conforme a necessidade do projeto

---

Obs.: A sequência foi organizada para que o domínio dos conceitos básicos de Ruby seja estabelecido antes de avançar para o desenvolvimento com Ruby on Rails, garantindo uma evolução lógica e consistente no aprendizado.
