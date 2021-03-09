require 'transaction'

describe Transaction do
    subject(:account) { Account.new }
  it 'initializes with a balance' do
    transaction = Transaction.new(balance: 100)
    expect(transaction.balance).to eq 100
  end
  
  it 'initializes with a credit' do
    transaction = Transaction.new(balance: 100, credit: 200)
    expect(transaction.credit).to eq 200
  end
  
  it 'initializes with a debit' do
    transaction = Transaction.new(balance: 100, credit: 200, debit: 300)
    expect(transaction.debit).to eq 300
  end
    
end