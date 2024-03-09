# language: pt
Funcionalidade: Remover texto após marcadores 

  @ct-rt-01
  Esquema do Cenário: Remover texto após marcadores específicos
    Dado que a string de entrada é "<entrada>"
    E os marcadores são "<marcadores>"
    Então a saída esperada é "<saida>"

  Exemplos:
    | entrada                                            | marcadores  | saida                          |
    | "bananas, tomates # e ventiladores"                | "#,!"       | "bananas, tomates"             |
    | "o rato roeu a roupa $ do rei % de roma"           | "%,!"       | "o rato roeu a roupa $ do rei" |
    | "the quick brown fox & jumped over * the lazy dog" | "&,*,%,!"   | "the quick brown fox"          |
