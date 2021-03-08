require 'account'

describe 'Account' do
    subject(:account) { Account.new }
    it 'should have a balance of 0 before any transactions have been made' do
    expect(account.balance).to eq (0)
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
    
end