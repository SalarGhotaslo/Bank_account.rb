require 'statement'

describe 'Statement' do
    subject(:statement) {Statement.new}
it 'initializes with a header' do
    expect(statement.header).to eq 'date || credit || debit || balance'
  end
end