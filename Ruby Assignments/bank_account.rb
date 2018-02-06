class BankAccount
attr_reader :account_number, :checking_balance, :saving_balance
@@bank_account_count = 0

  def initialize
    @account_number = account_creator
    @checking_balance = 0
    @saving_balance = 0
    @interest_rate = 0.01
    @@bank_account_count += 1
  end

  def deposit(funds, account)
    if account.downcase == 'checking'
      @checking_balance += funds
    elsif account.downcase == 'saving'
      @saving_balance += funds
    else
      puts 'Invalid account type. Valid options are checking and saving.'
    end
    self
  end

  def withdraw(funds, account)
    if funds > 0
      if account.downcase == 'checking'
        @checking_balance -= funds
      elsif account.downcase == 'saving'
        @saving_balance -= funds
      else
        puts 'Invalid account type. Valid options are checking and saving.'
      end
    else
      puts 'Insufficient funds'
    end
    self
  end

  def total_funds
    puts "Your total funds (including checking and saving) is #{@checking_balance + @saving_balance}"
    self
  end

  def account_information
    puts "Account Number: #{@account_number}"
    total_funds
    puts "Checking Account Balance: #{@checking_balance}"
    puts "Saving Account Balance: #{@saving_balance}"
    puts "Interest Rate: #{@interest_rate}"
  end

  private

  def account_creator
    rand(1000000000...10000000000)
  end
end
