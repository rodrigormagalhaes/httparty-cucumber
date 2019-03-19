Dado("que tenho o endereço de deleção de produtos da API") do  
end

Quando("realizo uma requisição para deletar um produto") do
    $response_delete = @product.deleteProduct($id)  
end

Então("a API retornará sucesso na deleção com os dados do produto deletado") do
    expect($response_delete.code).to eq(200)
    expect($response_delete.message).to eq('OK')  

    expect($response_delete['id']).to eq($id)
    expect($response_delete['name']).to eq(CHANGE_NAME)
    expect($response_delete['description']).to eq(CHANGE_DESCRIPTION)
    expect($response_delete['image']).to eq(CHANGE_IMAGE)
    expect(($response_delete['amount']).to_f).to eq(CHANGE_AMOUNT)
    expect(($response_delete['quantity']).to_i).to eq(CHANGE_QUANTITY)
    expect($response_delete['createdAt']).to eq(CHANGE_CREATED_AT)

    expect($response.body).to match_json_schema('product-schema')

    $deletedId = $response_delete['id']

end