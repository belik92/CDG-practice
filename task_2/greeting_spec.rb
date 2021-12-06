#  Написать метод **greeting**, который будет запрашивать
#  имя, фамилию и возраст, а затем выдавать приветствие в одном из двух вариантов, в зависимости от возраста:
#  *Привет, {имя} {фамилия}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано*
#  *Привет, {имя} {фамилия}. Самое время заняться делом!*

require 'rspec'
require './greeting.rb'
# Проверка программы
RSpec.describe "greeting_students" do
  it "#greeting under 18" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Sam", "Ostin", 16)
    expect(greeting).to eq("Hello, Sam Ostin. You are under 18 years old, but never early to start learning ruby.")
  end
  
  it "#greeting more 18" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Sam", "Ostin", 20)
    expect(greeting).to eq("Hello, Sam Ostin. It's right time to start your work in IT")
  end
end