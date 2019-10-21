require 'account'

describe 'Acceptence Test' do
  it 'delivers the required output as per the spec' do

    client_account = Account.new

    allow(Time).to receive(:now).and_return(Time.new(2012,1,10))
    client_account.deposit(1000)

    allow(Time).to receive(:now).and_return(Time.new(2012,1,13))
    client_account.deposit(2000)

    allow(Time).to receive(:now).and_return(Time.new(2012,1,14))
    client_account.withdraw(500)

    expect(client_account.print_statement).to eq(
      "date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00")
  end

end
