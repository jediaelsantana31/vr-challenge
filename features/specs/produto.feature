# language: pt
Funcionalidade: Validar produtos da VR

  @ct-p-01
  Cenario: Validar um produto aleatório
    Dado a lista de produtos da plataforma VR
    Quando consulto as informacoes dos produtos e estabelecimentos
    Entao deve retornar a lista "products" com as informacoes esperada
    E devo visualizar um item aleatorio da lista
