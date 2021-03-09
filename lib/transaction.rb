# frozen_string_literal: true

class Transaction
  attr_reader :balance, :credit, :debit, :date
  def initialize(balance: nil, credit: nil, debit: nil, date: Time.now.strftime('%d/%m/%Y'))
    @balance = balance
    @credit = credit
    @debit = debit
    @date = date
  end

  def display
    "#{@date} || #{@credit} || #{@debit} || #{@balance}"
    end
end
