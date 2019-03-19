Dado("que tenho o endereço de criação de produtos da API") do   
end

Quando("realizo uma requisição para cadastrar um produto") do
    $response = @product.createProduct
  
end

Então("a API retornará as informações do produto cadastrado") do
    expect($response.code).to eq(201)
    expect($response.message).to eq('Created')
    expect($response.body).to match_json_schema('product-schema')

    $id = $response['id']  
  
end