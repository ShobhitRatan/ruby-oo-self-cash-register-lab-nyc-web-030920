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
    def apply_discount()
        if @discount == 0 
            return ("There is no discount to apply.")
        end 
        @total -= (@total * discount / 100)
        return ("After the discount, the total comes to $#{total}.")
    end 
    def void_last_transaction 
        @items.pop 
        @total -= @previous 
    end 
end 
