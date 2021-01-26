# Automação Web
Teste Mobile

# Tecnologias utilizadas
* Ruby: Linguagem de programação utilizada no projeto
* RSpec: Ferramenta de testes para o Ruby. Utilizada para asserções.
* cucumber: Implementa o padrão BDD, definindo os cenários de testes nos arquivos .features localizados em /features/specs
* appium: framework para automação de testes mobile

# Pré-condição para execução dos testes
* Ruby
* RSpec
* Possuir Appium Server instalado e rodando
* Possuir um device configurado e em execução
Para o projeto foi definido, o deviceName: "Nexus 5".


# Execução dos testes
* No diretorio raiz do projeto, onde está localizado o arquivo gemfile, executar o comando abaixo para instalar as dependências do projeto
 ```
bundle install
```
  
* Na raiz do projeto executar o comando
```
cucumber
```

# Relatório de execução
* O relatório de execução pode ser acessado abrindo o arquivo /log/report.html .
