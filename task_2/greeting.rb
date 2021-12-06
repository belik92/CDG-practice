#  Написать метод **greeting**, который будет запрашивать
#  имя, фамилию и возраст, а затем выдавать приветствие в одном из двух вариантов, в зависимости от возраста:
#  *Привет, {имя} {фамилия}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано*
#  *Привет, {имя} {фамилия}. Самое время заняться делом!*

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