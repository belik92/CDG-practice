
#  Написать метод foobar, который принимает пару чисел,
#  если хотя бы одно равно 20 - возвращает второе число,
#  в противном случае выводит сумму этих чисел.

require 'rspec'
require './foobar.rb'

# Тест программы
RSpec.describe "defff" do
  it "#second_number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 10)
    expect(foobar).to eq(10)
  end
  it "#first_number" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(30, 20)
    expect(foobar).to eq(30)
  end
  it "#summ" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(10, 10)
    expect(foobar).to eq(20)
  end
end
