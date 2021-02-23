class Request
    include HTTParty

    def get_cep cep
        $response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
    end

    def validate_response
        if $response['ibge']
            puts "CÓDIGO IBGE : #{$response['ibge']}"
        else
            puts "CEP INVÁLIDO"
        end
    end
end