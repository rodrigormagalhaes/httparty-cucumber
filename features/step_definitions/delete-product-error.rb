Quando("realizo uma requisição para deletar um produto inexistente") do
    @response_invalid_delete = @product.deleteProduct('5000')    
end

Então("a API retornará que o produto a ser deletado não foi encontrado") do
    expect(@response_invalid_delete.code).to eq(404)
    expect(@response_invalid_delete.message).to eq('Not Found')  
end