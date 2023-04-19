class CashRegister
    attr_accessor :discount, :total, :itemList, :last_transaction
   

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @itemList = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do
            self.itemList << title 
        end 
    end
    
    def apply_discount
       if self.discount != 0
            current_discount = (100 - self.discount.to_f) / 100
            self.total = (self.total * current_discount).to_i

         "After the discount, the total comes to $#{self.total}."
       else
        "There is no discount to apply."
       end
    end

    def items
        self.itemList
    end
    def void_last_transaction
        self.total -= self.last_transaction
    end
end
