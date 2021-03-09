# frozen_string_literal: true

require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions =[]
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(balance: @balance, credit: amount)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << -amount
    if @balance < amount
      raise 'Insufficient funds, please select a different amount'
     end
      end
        end
