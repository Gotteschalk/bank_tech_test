BANK TECH TEST README

A short project simulating a tech test style challenge.  Conducted during week 10 at Makers Academy.

The codebase is written in Ruby and contains two Classes: Account and Statement.  Account contains the logic necessary to calculate a clients bank transactions.  Statement contains the logic necessary to print a bank statement in the correct format.

Usage: A user is only required to use an account class object. There are three public methods available to an Account Class object:

'#deposit(amount)'
This takes an integer as an argument. It will add that amount to the account balance and store the transaction in the account's transaction history.

'#withdraw(amount)' - This takes an integer as an argument. It will remove that amount to the account balance and store the transaction in the account's transaction history.

'#print_statement' - This uses the account's transaction history to create a new Statement object.  It will then run the Statement Class .print method on this Statement Class object.  The .print function returns a correctly formatted string of the accounts transaction history as per the problem's specification.

Example usage:

```ruby
my_account = Account.new
my_account.deposit(10)
my_account.deposit(5)
my_account.withdraw(3)
my_account.print_statement

"date || credit || debit || balance\n
21/10/2019 || || 3.00 || 12.00\n
21/10/2019 || 5.00 || || 15.00\n
21/10/2019 || 10.00 || || 10.00"
```

Task:

Specification
Requirements

    You should be able to interact with your code via a REPL like IRB or the
    JavaScript console. (You don't need to implement a command line interface
    that takes input from STDIN.)

    Deposits, withdrawal.
    Account statement (date, amount, balance) printing.
    Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
