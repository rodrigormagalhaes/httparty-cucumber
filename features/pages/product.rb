class Product
    include HTTParty
    require_relative '../hooks/product-hook'

    base_uri 'http://5c8fa6988447f30014cb82ea.mockapi.io'

    def initialize(bodyValue)
        @body = {:body => bodyValue}
    end
    
    def creatProduct
        self.class.post('/product', @body)
    end

    def getProduct(id)
        self.class.get("/product/#{id}", {})
    end
end