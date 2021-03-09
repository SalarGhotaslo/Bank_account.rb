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
    "#{@date} || #{format(@credit)} || #{format(@debit)} || #{format(@balance)}"
  end

  private

  def format(type)
    return '%.2f' % type.to_f.truncate(2) unless type == nil?
  end
end
