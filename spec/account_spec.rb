require 'account'

describe 'Account' do
    account = Account.new
    it 'should have a balanve of 0 before any transactions have been made' do
    expect(account.balance).to eq (0)
    end
    
end