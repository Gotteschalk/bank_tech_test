require 'account'

account = Account.new

describe Account do
  it 'Is initialized with a balance of 0' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'increases the balance by the amount deposited' do
      expect{account.deposit(10)}.to change{account.balance}.from(0).to(10)
    end
  end
end
