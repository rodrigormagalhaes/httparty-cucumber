Dado("que tenho o endereço de alteração de produtos da API") do
end

Quando("realizo uma requisição para alterar um produto") do
    $response_put = @product.updateProduct($id)
end

Então("a API retornará os dados do produto alterados") do
    expect($response_put.code).to eq(200)
    expect($response_put.message).to eq('OK')

    expect($response_put['id']).to eq($id)
    expect($response_put['name']).to eq(CHANGE_NAME)
    expect($response_put['description']).to eq(CHANGE_DESCRIPTION)
    expect($response_put['image']).to eq(CHANGE_IMAGE)
    expect(($response_put['amount']).to_f).to eq(CHANGE_AMOUNT)
    expect(($response_put['quantity']).to_i).to eq(CHANGE_QUANTITY)
    expect($response_put['createdAt']).to eq(CHANGE_CREATED_AT)

    expect($response.body).to match_json_schema('product-schema')

end