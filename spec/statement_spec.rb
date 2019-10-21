require 'statement'

describe Statement do

  context 'On initialization' do
    transaction_history = [["+","10/20/19",10,10]]
    statement = Statement.new(transaction_history)

    it 'It takes an account as an argument and stores the transaction history' do
      expect(statement.transaction_history).to eq([["+","10/20/19",10,10]])
    end

    it 'Has an empty statement Array on Instantiation' do
      expect(statement.statement_view_array).to be_empty
    end
  end

  describe '#print' do
    it 'Takes a transaction history with a single deposit returns a formatted string statement' do
      transaction_history = [["+","10/20/19",10,10]]
      statement = Statement.new(transaction_history)
      statement.print

      expect(statement.print).to include("date || credit || debit || balance")
      expect(statement.print).to include("10/20/19 || 10.00 || || 10.00")
    end

    it "Takes an account with multiple transactions and returns a formatted string statement" do
      transaction_history = [["+","10/17/19",10,10],["-","10/18/19",3,7],["+","10/20/19",10,17]]
      statement = Statement.new(transaction_history)
      statement.print

      expect(statement.statement_view_array[0]).to eq("date || credit || debit || balance")
      expect(statement.statement_view_array[1]).to eq("10/20/19 || 10.00 || || 17.00")
      expect(statement.statement_view_array[2]).to eq("10/18/19 || || 3.00 || 7.00")
      expect(statement.statement_view_array[3]).to eq("10/17/19 || 10.00 || || 10.00")
    end
  end
end
