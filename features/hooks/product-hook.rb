Before '@product' do

    @body = {
        "name": NAME,
        "description": DESCRIPTION,
        "image": IMAGE,
        "amount": AMOUNT,       
        "quantity": QUANTITY,
        "createdAt": CREATED_AT
    }
    
    @product = Product.new(@body)
    
end