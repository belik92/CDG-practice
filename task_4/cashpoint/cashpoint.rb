#require 'rspec'
class Cash_machine
  attr_reader :balance
def initialize
  if File.exist?('balance.txt') 
  file = File.open('balance.txt')
  balance = file.readlines.join.to_i
  #puts @balance.class
  file.close
  else 
    balance = 100
  end
  @balance = balance
  puts @balance
end
def c_balance
  puts "Your current balance is ... #{@balance}" 
  check_input
end
def deposit
  puts "input deposit value >>>"
  d_value = gets.to_i
  if d_value <= 0
    raise "Deposit must be more than zero"
  end
  @balance += d_value
  puts "After deposit, your current balance is ... #{@balance}"
  check_input
end
def withdraw
  puts "Input withdraw value >>>"
  w_value = gets.to_i
  if w_value  > @balance
    raise "You cannot take more, than you have on balance"
  end
  if w_value <= 0 
    raise "You cannot take zero or negative number"
end
  @balance -= w_value   
  puts "After withdraw, your current balance is ... #{@balance}"
  check_input
end
def quit
  File.write('balance.txt', @balance)
  puts "Your balance equal #{@balance}"
end
def check_input
  puts "B --- for balance \nD --- for put money \nW --- withdraw your money \nQ --- to exit"
  command = gets.chomp.upcase
  @command = command
  case @command
  when @command = "B"
    c_balance
  when @command = "D"
    deposit
  when @command = "W"
    withdraw
  when @command = "Q"
    quit
  else
  puts "Please, check your input  command, and try again." 
  check_input
  end
end
end

# RSpec.describe Cash_machine do
# let(:balance)  { 100 }
# subject { Cash_machine.new(balance) }

# describe '#balance' do
#   it "renders balance" do
#     expect(subject.balance).to eq balance
#   end
# end

# describe '#deposit' do
#   let(:d_value) { 0 }

#   it "return exeption" do
#     expect {subject.deposit(d_value)}.to raise_error("Deposit must be more than zero")
#   end

#   context "when d_value greater than zero" do
#     let(:d_value) { 100 }
#     it "increase balance" do 
#       subject.deposit(d_value)
#       expect(subject.balance).to eq(balance + d_value)
#   end
# end
# end
# end

