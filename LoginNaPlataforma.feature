#language: pt 
Funcionalidade: Login na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o cliente está na página de login


  Esquema do Cenário: Redirecionamento para checkout após login bem-sucedido
    E o cliente insere o email <Email> e <Senha>
    Quando o cliente clica no botão "Entrar"
    Então o cliente deve ser direcionado para a tela de checkout

    Exemplos:
      | Email                | Senha    |
      | cliente@exemplo.com  | senha123 |
      | usuario@dominio.com  | senhaSegura |


  Esquema do Cenário: Exibir mensagem de erro ao inserir dados inválidos
    E o cliente insere o email <Email> e <Senha>
    Quando o cliente clica no botão "Entrar"
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | Email                 | Senha         |
      | cliente@exemplo.com   | senhaErrada   |
      | usuario@dominio.com   | senha123      |
      | invalido@exemplo.com  | senhaSegura   |