#language: pt

Funcionalidade: Cadastrar Categoria
Como usuário logado
Para que eu possa criar uma categoria
Eu quero acessar a tela de cadastro de categoria
E realizar cadastro dela

Cenário: Cadastro de categoria realizada com sucesso
Dado que estou na página de cadastro de categoria
Quando preencho o campo "Nome" com "Contas"
E clico no botão "Cadastrar"
Então ele deve salvar a categoria
E deverei ser redirecionado para tela de categorias

Cenário: Cadastro de categoria com erro
Dado que estou na página de cadastro de categoria
Quando não preencho o campo "Nome"
E clico no botão "Cadastrar"
Então deverei ver a mensagem de erro "É obrigatório informar o nome."