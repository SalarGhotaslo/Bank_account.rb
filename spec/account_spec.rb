# frozen_string_literal: true

require 'account'

describe 'Account' do
  subject(:account) { Account.new }
  it 'should have a balance of 0 before any transactions have been made' do
    expect(account.balance).to eq 0
  end
  it 'should deposit money into my account' do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
  end
  it 'should withdraw money from my account' do
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect(account.balance).to eq(2500)
  end
  it 'raises error if withdraw is greater than balance' do
    account.deposit(1000)
    expect { account.withdraw(1001) }.to raise_error('Insufficient funds, please select a different amount')
  end
  it 'stores user deposit into transaction array' do
    account.deposit(100)
    expect(account.transactions.first).to be_an_instance_of Transaction
  end
  it 'initializes with a empty transactions array' do
    expect(account.transactions).to eq []
  end
  it 'stores each transaction in transactions array' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.transactions.length).to eq 2
  end
  
end
