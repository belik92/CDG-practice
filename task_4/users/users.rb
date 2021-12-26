#У вас есть файл, со следующей структурой и содержащий не менее 10 строк: Имя, фамилия  и возраст
#*Прим.*
#*Иван Иванов 20*
#*Петр Петров 21*
#Необходимо прочитать файл, затем запросив у пользователя ввод возраста, найти в результатах чтения файла,
#студента чей возраст равен введенному числу и записать этого студента(тов) в другой файл с названием results.txt.
#После этого перезапросить ввод.
#Программа завершается выводом на экран содержимого файла results.txt построчно, если все студенты из первого файла
#были записаны во второй или если пользователь ввел с клавиатуры -1
class Guess_player_age  
def read 
  file_1 = File.read("users.txt").split("\n")
  @file_1 = file_1
  puts @file_1
end
def find_element
  new_file = []
  puts @file_1_class
  while @file_1 != @file_1.empty? do
    puts "Input player age please (-1 for exir) >>>"
    age = gets.chomp.to_s
    @age = age
      if @age.length > 1
    @file_2 = @file_1.select {|line| line.include?(@age)}
    @file_1 -= @file_2
    @new_file = new_file.push(@file_2)
    puts @file_2
    puts "Leave #{@file_1.length} players for succes"
      else
      raise "number must include more than 1 characters"
  end
    break if @age == "-1" || @file_1.empty?
  end
end
def write_file
  file = File.write("result.txt", @new_file.join("\n"))
  puts @new_file    
end
end