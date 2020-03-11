class Cash_Register 
    attr_reader :discount, :items 
    attr_accessor :total 

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @items = []
        @prev = 0
    end 
    

end 
