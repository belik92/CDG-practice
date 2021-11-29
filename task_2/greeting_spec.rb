#  Написать метод **greeting**, который будет запрашивать
#  имя, фамилию и возраст, а затем выдавать приветствие в одном из двух вариантов, в зависимости от возраста:
#  *Привет, {имя} {фамилия}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано*
#  *Привет, {имя} {фамилия}. Самое время заняться делом!*

require 'rspec'
def greeting
  print "Hello, input your first name >>"
    first_name = gets.chomp.to_s
  print "input your second name >>"
    second_name = gets.chomp.to_s
  print "input your age >>"
    age = gets.to_i
  if age > 18
    "Hello, #{first_name} #{second_name}. It's right time to start your work in IT"
  else
    "Hello, #{first_name} #{second_name}. You are under 18 years old, but never early to start learning ruby."
  end
end
puts greeting

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