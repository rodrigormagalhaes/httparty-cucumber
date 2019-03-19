Dado("que tenho o endereço de busca de pedidos da API") do
end

Quando("realizo uma requisição para buscar um produto") do
    $response_get = @product.getProduct($id)
end

Então("a API retornará o produto buscado") do
    expect($response_get.code).to eq(200)
    expect($response_get.message).to eq('OK')

    expect($response_get['id']).to eq($id)
    expect($response_get['name']).to eq(NAME)
    expect($response_get['description']).to eq(DESCRIPTION)
    expect($response_get['image']).to eq(IMAGE)
    expect(($response_get['amount']).to_f).to eq(AMOUNT)
    expect(($response_get['quantity']).to_i).to eq(QUANTITY)
    expect($response_get['createdAt']).to eq(CREATED_AT)

    expect($response.body).to match_json_schema('product-schema')

    puts $response_get['id']
  
end