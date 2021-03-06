# Bank Account Tech Test

This is a practise tech test on week 10 of Makers course. This is to practise OO design and TDD skills.

## Client requirements:

```
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see
```

## Example of how it should be displayed

```
Date       || Credit  || Debit  || Balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00
```

## My approach and explanation of classes:

- The Account Class is the main class where you can deposit, withdraw and view statements.

- The Statement Class is to print out the statement

- The Transaction Class is the display

## How to run the programme

- Run bundle install
- irb -r './lib/account.rb'

## User stories

```
As a customer
So that I can see how much money I have in my account
I would like to be able to check my balance
```

```
As a Customer
So that I can keep my money safe
I would like to desposit money into my account
```

```
As a Customer
So that I can spend my money
I would like to withdraw money from my account
```

```
As a customer
So that I have clear visibility of my transactions
I would like to be able to see when I deposited or withdrew money from my account
```

```
As a customer
So that I don't spend more than I have
I would like to receive an error message when I try to withdraw an amount greater than my current balance
```

```
As a customer
So that I can see how much and when I withdrew/deposited money
I would like to see a full transcation statement
```
