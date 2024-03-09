# language: pt
Funcionalidade: Validar Estabelecimentos Cadastrados

  @ct-te-01
  Cenario: Validar os tipos de estabelecimentos da VR
    Dado os tipos de estabelecimentos da VR
    Quando consulto as informacoes dos produtos e estabelecimentos
    Entao deve retornar a lista "typeOfEstablishment" com as informacoes esperada
    E devo visualizar um item aleatorio da lista
