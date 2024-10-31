#language: pt 
Funcionalidade: Configurar Produto no EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
    Dado que o cliente está na página de detalhes do produto 


  Esquema do Cenário: Verificação de obrigatoriedade das seleções
    E o cliente seleciona o <Tamanho> e <Cor> e <Quantidade>
    Quando o cliente clica no botão comprar
    Então o sistema deve exibir a mensagem "<Mensagem>"

    Exemplos:
      | Cor     | Tamanho | Quantidade | Mensagem                                 |
      | Nenhuma | M       | 1          | A seleção de cor é obrigatória.          |
      | Azul    | Nenhum  | 1          | A seleção de tamanho é obrigatória.      |
      | Azul    | M       | Nenhuma    | A seleção de quantidade é obrigatória.   |


  Esquema do Cenário: Verificação do limite de quantidade
    E o cliente seleciona o <Tamanho> e <Cor> e <Quantidade>
    Quando o cliente clica no botão comprar
    Então o sistema deve exibir a mensagem "<Mensagem>"

    Exemplos:
      | Quantidade | Mensagem                                                          |
      | 11         | Quantidade inválida: o limite é de 10 unidades por compra.        |
      | 10         | Produto adicionado ao carrinho com sucesso.                       |
      | 9          | Produto adicionado ao carrinho com sucesso.                       |
      | 0          | A seleção de quantidade é obrigatória.                            |


  Esquema do Cenário: Resetar seleções ao clicar no botão "limpar"
    E o cliente seleciona o <Tamanho> e <Cor> e <Quantidade>
    Quando o cliente clica no botão "limpar"
    Então as seleções devem voltar ao estado original

    Exemplos:
      | Cor     | Tamanho | Quantidade |
      | Azul    | M       | 5          |
      | Vermelho| G       | 3          |
      | Preto   | P       | 2          |
      | Verde   | GG      | 10         |