#language: pt 
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
    Dado que o cliente está na página de cadastro

  Esquema do Cenário: Cliente preenche todos os dados obrigatórios e conclui o cadastro
    E os campos obrigatórios estão marcados com asteriscos
    E o cliente preenche o <Nome> e <Endereco> e <CEP> e <Telefone> e <Email> e <Senha>
      | Campo              | Valor               |
      | Nome               | João da Silva       |
      | Endereco           | Rua Exemplo, 123    |
      | CEP                | 12345-678           |
      | Telefone           | (11) 98765-4321     |
      | Email              | cliente@exemplo.com |
      | Senha              | senha123            |
    Quando clica no botão "Cadastrar"
    Então o cliente deve ser cadastrado com sucesso


  Esquema do Cenário: Cliente insere um e-mail com formato inválido no cadastro
    E os campos obrigatórios estão marcados com asteriscos
    E o cliente preenche o <Nome> e <Endereco> e <CEP> e <Telefone> e <Email> e <Senha>
      | Campo               | Valor             |
      | Nome                | João da Silva     |
      | Endereco            | Rua Exemplo, 123  |
      | CEP                 | 12345-678         |
      | Telefone            | (11) 98765-4321   |
      | Email               | usuario.com       |
      | Senha               | senha123          |
    Quando clica no botão "Cadastrar"
    Então o sistema deve exibir a mensagem de erro "Formato de e-mail inválido"


  Esquema do Cenário: Cliente tenta cadastrar com campos obrigatórios vazios
    E os campos obrigatórios estão marcados com asteriscos
    E o cliente preenche o <Nome> e <Endereco> e <CEP> e <Telefone> e <Email> e <Senha>
      | Campo               | Valor             |
      | Nome                |                   |
      | Endereco            |                   |
      | CEP                 |                   |
      | Telefone            |                   |
      | Email               |                   |
      | Senha               |                   |
    Quando clica no botão "Cadastrar"
    Então o sistema deve exibir a mensagem de alerta "Por favor, preencha todos os campos obrigatórios"




