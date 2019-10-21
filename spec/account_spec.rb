require 'account'

account = Account.new

describe Account do
  it 'Is initialized with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'Has an empty transaction history on instantiation' do
    expect(account.transaction_history).to be_empty
  end

  describe '#deposit' do
    it 'increases the balance by the amount deposited' do
      expect{account.deposit(10)}.to change{account.balance}.from(0).to(10)
    end

    it 'records the value of the deposit and the balance in the account transaction history' do
      expect(account.transaction_history).to eq([10, 10])
    end
  end

  describe '#withdraw' do
    it 'decreases the balance by the amount deposited' do
      expect{account.withdraw(5)}.to change{account.balance}.from(10).to(5)
    end
  end
end
