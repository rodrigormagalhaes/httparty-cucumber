Dado("que tenho o endereço da API") do   
end

Quando("realizo uma requisição para cadastrar um produto") do
    $response = @product.creatProduct
  
end

Então("a API retornará as informações do produto cadastrado") do
    puts "Response code: #{$response.code}"

    $id = $response["id"]  

    expect($response.body).to match_json_schema('product-schema')
  
end