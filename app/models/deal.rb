class Deal < Sequel::Model
  many_to_one :city
  many_to_one :partner_account, :class => :Account

  def saving
    self.value - self.price
  end

  def discount
    Integer( ( 1 - Float(self.price)/Float(self.value) )*100 )
  end

end
