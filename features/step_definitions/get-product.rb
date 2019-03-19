Quando("realizo uma requisição para buscar um produto") do
    $get = @product.getProduct($id)
end

Então("a API retornará o produto buscado") do
    expect($get.message).to eq('OK')
    expect($get['id']).to eq($response['id'])

    puts $get['id']
  
end