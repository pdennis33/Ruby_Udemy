class BankAccount
  STARTING_BALANCE = 5000

  def initialize
    @amount = STARTING_BALANCE
  end

  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private

  def amount
    @amount / 100
  end
end

ba = BankAccount.new
p ba.status
