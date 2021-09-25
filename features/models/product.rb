class Product
    include HTTParty
    require_relative '../hooks/product-hook'

    base_uri 'https://5c8fa6988447f30014cb82ea.mockapi.io'

    def initialize(bodyValue)
        @body = {:body => bodyValue}
    end
    
    def createProduct
        self.class.post('/product', @body)
    end

    def getProduct(idValue)
        self.class.get("/product/#{idValue}", {})
    end

    def updateProduct(idValue)       
        @bodyEdit = {:body =>
            {
                "name": CHANGE_NAME,
                "description": CHANGE_DESCRIPTION,
                "image": CHANGE_IMAGE,
                "amount": CHANGE_AMOUNT,       
                "quantity": CHANGE_QUANTITY,
                "createdAt": CHANGE_CREATED_AT}
            }

        self.class.put("/product/#{idValue}", @bodyEdit)
    end

    def deleteProduct(idValue)
        self.class.delete("/product/#{idValue}",{})
    end

end