# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
    if @balance < amount
      raise 'Insufficient funds, please select a different amount'
     end
      end
        end
