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

  def execute_transaction
    if @status == "pending" && valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
    end
  end
end
