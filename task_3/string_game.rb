#👉 Написать скрипт, который будет принимать слово, если слово заканчивается на “CS”
#- выводит на экран цифру 2 в степени (длины введенного слова), если не заканчивается - выводит слово задом наперед

def str_convert
    print "input some world >>"
    a = gets.chomp.to_s
    if a[-2..-1] == "CS"
      2**a.length
    else a.reverse
    end
end
  puts str_convert 
