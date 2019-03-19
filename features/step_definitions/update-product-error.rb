Quando("realizo uma requisição para alterar um produto que não existe") do
    @response_invalid_put = @product.updateProduct('3000')  
end

Então("a API retornará que o produto a ser alterado não foi encontrado") do
    expect(@response_invalid_put.code).to eq(404)
    expect(@response_invalid_put.message).to eq('Not Found')
  
end