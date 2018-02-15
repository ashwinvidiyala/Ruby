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

  def checking_balance_print
    puts "The checking balance is #{@checking_balance}"
  end

  def saving_balance
    puts "The saving balance is #{@saving_balance}"
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
    # if (account.downcase == 'checking' && @checking_balance > funds)
    #   @checking_balance = @checking_balance - funds
    # elsif (account.downcase == 'saving' && @saving_balance > funds)
    #   @saving_balance =- funds
    # elsif (@checking_balance < funds || @saving_balance < funds)
    #   puts "Insufficient funds"
    # end
    # self
    if account.downcase == 'checking'
      if @checking_balance > funds
        @checking_balance -= funds
      else
        puts "Insufficient funds"
      end
    elsif account.downcase == 'saving'
      if @saving_balance > funds
        @saving_balance -= funds
      else
        puts "Insufficient funds"
      end
    end
    self
  end

  def total_funds
    @checking_balance + @saving_balance
  end

  def total_funds_print
    puts "Your total funds (including checking and saving) is #{@checking_balance + @saving_balance}"
    self
  end

  def account_information
    puts "Account Number: #{@account_number}"
    total_funds_print
    puts "Checking Account Balance: #{@checking_balance}"
    puts "Saving Account Balance: #{@saving_balance}"
    puts "Interest Rate: #{@interest_rate}"
  end

  private

  def account_creator
    rand(1000000000...10000000000)
  end
end

new_bank = BankAccount.new
# new_bank.account_information
new_bank.deposit(200, 'checking')
new_bank.deposit(200, 'saving')
# new_bank.account_information
# # new_bank.checking_balance
# new_bank.saving_balance

new_bank.total_funds
# new_bank.account_information
new_bank.withdraw(199, 'saving')
new_bank.withdraw(199, 'checking')
new_bank.total_funds_print
# puts "The total number of accounts is #{new_bank.bank_account_count}"
# new_bank.checking_balance
# new_bank.total_funds
# new_bank.withdraw(100, 'checking')
# new_bank.account_information
# new_bank.total_funds
