Dado('que a requisição seja feita utilizando um CEP válido {string}') do |cep|
    request.get_cep(cep) 
end
  
Entao('o serviço deve retornar o resultado da busca') do
    request.validate_response 
 end
  
Dado('que um CEP inválido seja informado {string}') do |cep|
    request.get_cep(cep) 
end
  
Entao('a busca deve retornar um erro') do
    request.validate_response 
end

private

def request
    @request ||= Request.new
end
