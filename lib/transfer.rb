class Transfer

  attr_accessor :sender, :receiver, :amount, :status
  def initialize(acct1, acct2, amount)
    @sender = acct1
    @receiver = acct2
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end
end

