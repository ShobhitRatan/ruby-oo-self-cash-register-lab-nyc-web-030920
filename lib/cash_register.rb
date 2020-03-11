class CashRegister 
    attr_reader :discount, :items 
    attr_accessor :total 

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @items = []
        @previous = 0
    end 
    def add_item(title, price, quantity=1)
        @total += (quantity * price)
        quantity.times {@items << title}
        @previous = (quantity * price)
    end 
    
end 
