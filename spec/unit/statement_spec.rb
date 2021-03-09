# frozen_string_literal: true

require 'statement'

describe 'Statement' do
  subject(:statement) { Statement.new }

  it 'initializes with a header' do
    expect(statement.header).to eq 'date || credit || debit || balance'
  end

  it 'prints account statement' do
    input = ['transaction:0', 'transaction:1']
    output = "\ntransaction:0\ntransaction:1\n"
    expect { statement.print_statement(input) }.to output(statement.header + output).to_stdout
  end
end
