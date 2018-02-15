require_relative 'bank_account'

RSpec.describe BankAccount do
  before(:each) do
    @bank = BankAccount.new
  end

  it 'has a getter method method for checking balance' do
    @bank.deposit(100, 'checking')
    expect(@bank.checking_balance).to eq(100)
  end

  it 'has a getter method that retrieves the total account balance' do
    @bank.deposit(100, 'checking')
    @bank.deposit(100, 'saving')
    expect(@bank.total_funds).to eq(200)
  end

  it 'has a function withdraw that allows the user to withdraw cash' do
    @bank.deposit(100, 'checking')
    @bank.withdraw(50, 'checking')
    expect(@bank.total_funds).to eq(50)
  end

  it 'raises error if user tries to withdraw more money than is in account' do
    @bank.deposit(100, 'checking')
    expect{ @bank.withdraw(101, 'checking') }.to output("Insufficient funds\n").to_stdout
  end

  it 'raises an error when user tries to retrieve the total number of bank accounts' do
    expect{ @bank.bank_account.count }.to raise_error(NoMethodError)
  end

  it 'raises an error when user tries to retrieve the interest rate' do
    expect{ @bank.interest_rate }.to raise_error(NoMethodError)
  end
end
