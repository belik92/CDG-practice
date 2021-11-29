#  Написать метод foobar, который принимает пару чисел,
#  если хотя бы одно равно 20 - возвращает второе число,
#  в противном случае выводит сумму этих чисел.

def foobar
  print "input first number "
    first_number = gets.to_i
  print "input second number "
    second_number = gets.to_i
  if first_number == 20
      answer_1 = second_number
  elsif second_number == 20
      answer_2 = first_number     
  else  summ = first_number + second_number
      answer_3 = summ
  end
end
puts foobar