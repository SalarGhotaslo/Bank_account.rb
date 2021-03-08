require 'account'

describe 'Account' do
    account = Account.new
    it 'should have a balance of 0 before any transactions have been made' do
    expect(account.balance).to eq (0)
    end
    it 'should deposit money into my account' do
        account.deposit(500)
        expect(account.balance).to eq(500)
    end
    
end