# [Fleury] - QA Automação
## Desafio Mobile - Android

### Requisitos

- Ruby
- Appium
- Cucumber
- BDD
- Report
- Page Objects

### Sugestões:

- Aplicar alguma técnica de Page Objects e Justificar
- Evitar Hard-Code
- Inserir comentários/justificativas sobre seus scripts de automação 

### Teste:

O Objetivo do teste consiste em validar o endereço da unidade de Brasília através do Aplicativo **Fleury.apk**, disponível na pasta **APP** desse repositório

### ![](/GIF/01.gif)

### Deve-se seguir estes passos:

- Elaborar o BDD com o comportamento do GIF acima
- Montar o script de automação com todos os requisitos solicitados
- Gerar um report e incluí-lo no commit, comprovando que o teste deu OK ao ser executado

### Como submeter?

Deverá ser enviado um PULL REQUEST com o seu teste.

#### Como funciona?

- Fork deste repositório (Não clonar direto)
- Clonar a partir do repositório que foi criado na sua conta
- Commitará e subirá as alterações para o SEU fork
- Abra um Pull Request para este repositório


### Para ver o último resultado, basta baixar o projeto e executar os seguintes comandos:
```
allure generate reports/allure-results --clean
allure open
```

### To be able to generate reports after the test running, you have to install allure:
```
brew install allure -> MAC
```
## Running the tests

Below are the main ways that you can do to run the tests with different configurations.

### To run with the default chromedriver configuration
```
cucumber --publish
```
After that, open the link displayed on terminal "View your Cucumber Report at:"

###Or

```
cucumber --format AllureCucumber::CucumberFormatter --out
allure generate reports/allure-results --clean
allure open
```
