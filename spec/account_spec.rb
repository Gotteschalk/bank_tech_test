require 'account'

describe Account do
  context 'On initialization' do

    account = Account.new

    it 'Is initialized with a balance of 0' do
      expect(account.balance).to eq 0
    end

    it 'Has an empty transaction history' do
      expect(account.transaction_history).to be_empty
    end
  end

  describe '#deposit' do
    context 'When £10 is deposited to a new account' do
      account = Account.new
      it 'Increases the balance by the amount deposited' do
        expect{account.deposit(10)}.to change{account.balance}.from(0).to(10)
      end
      it 'Records the type, value and new balance in the account transaction history' do
        expect(account.transaction_history).to eq([["+",10,10]])
      end
    end
  end

  describe '#withdraw' do
    context 'When £5 is withdrawn from an account with £10 in' do
      account = Account.new
      account.deposit(10)

      it 'Decreases the balance by the amount deposited' do
        expect{account.withdraw(5)}.to change{account.balance}.from(10).to(5)
      end
      it 'Records the value of the deposit and the balance in the account transaction history' do
        expect(account.transaction_history).to eq([["+",10,10],["-",5,5]])
      end
    end
  end
end
