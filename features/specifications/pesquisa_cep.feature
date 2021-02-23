#language: pt

Funcionalidade: Pesquisar CEP
Como usuário quero fazer buscas por CEP

Cenario: Busca efetuada com sucesso
Dado que a requisição seja feita utilizando um CEP válido '01001000'
Entao o serviço deve retornar o resultado da busca

Cenario: CEP inválido
Dado que um CEP inválido seja informado '01001'
Entao a busca deve retornar um erro