# Testes Backend com Ruby, HTTParty e RSpec

Este projeto contém testes automatizados de API desenvolvidos em Ruby usando HTTParty e RSpec.

## Requisitos

Certifique-se de ter o Ruby instalado em seu sistema.

Instale as gems necessárias executando o seguinte comando no terminal:
```
bundle install
```

## Executando os Testes

### Execução de um Cenário Específico

Para executar um cenário específico, você pode usar o seguinte comando:
```
cucumber ENVIRONMENT=test --tags @tag
```
Substitua @tag pela tag do cenário que deseja executar.

### Execução de Todos os Cenários
Para executar todos os cenários, você pode usar o seguinte comando:
```
cucumber ENVIRONMENT=test
```
Este comando executará todos os cenários de teste.
