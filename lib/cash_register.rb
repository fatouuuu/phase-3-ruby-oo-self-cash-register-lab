class CashRegister
    attr_accessor :total, :discount, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @last_transaction = 0
      @items = []
    end
  
    def add_item(title, price, quantity=1)
        
        @last_transaction = [title, price, quantity]
        quantity.times{@items << title}
        
        @total = @total + price * quantity 

       
    end

    def items()
        @items
    end
  
    def apply_discount
      if discount > 0
        @total -= (@total * (discount / 100.0))
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end
  
    def void_last_transaction 
        @total = @total - (@last_transaction[1] * @last_transaction[2])
    end
end
  
