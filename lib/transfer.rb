class Transfer

  attr_accessor :sender, :receiver, :amount
  def initialize(acct1, acct2, amount)
    @sender = acct1
    @receiver = acct2
    @amount = amount
  end
end
