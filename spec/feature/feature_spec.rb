
require './lib/account'

describe 'feature test ' do
  subject(:account) { Account.new }

  it 'allows user to deposit, withdraw funds and print statement' do
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    account.statement
    header = "date || credit || debit || balance \n"
    expect { account.statement }.to output(/#{header}/n).to_stdout
  end
end