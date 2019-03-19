Quando("realizo uma requisição para buscar um produto inválido") do
    @response_invalid_get = @product.getProduct('01')  
end

Então("a API retornará que o produto não foi encontrado") do
    expect(@response_invalid_get.code).to eq(404)
    expect(@response_invalid_get.message).to eq('Not Found')
end