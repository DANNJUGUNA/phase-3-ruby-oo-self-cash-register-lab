class CashRegister

   attr_accessor :discount, :total ,:items,:last_transaction

    def initialize(discount=0)
       @discount=discount
       @total=0
       @items=[]
    end

   def total=(total)
      @total=total
    end

    def add_item(title,price,quantity=1)
        @last_transaction=price*quantity
        self.total+=last_transaction
        @items+=[title]*quantity

    end
    def apply_discount
        if (self.discount!=0)
            self.total=@total-@total*self.discount/100 
            return "After the discount, the total comes to $#{self.total}." 
        else
             return "There is no discount to apply." 
        end
    end
   
    def  void_last_transaction
        self.total-=last_transaction
    end
end
