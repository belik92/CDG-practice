#Написать скрипт, который будет выводить массив покемонов
#Спросит сколько добавить покемонов
#Указанное на предыдущем этапе число раз спросит имя и цвет каждого покемона
#Выведет в консоль массив содержащий хеши покемонов в формате 
#`[{ name: 'Pikachu', color: 'Yellow' }, … n times{}]`
#Код должен быть организован в методы

def pokemon
  pok_arr = []
  print "Please input, how many pokemons you want to have? >> "
  i = gets.to_i
  if i > 0
    i.times do    
      print "input pokemons name (put '-1' to exit) >> "
      name = gets.chomp.to_s
        break if name == "-1" 
        print "input pokemons color(put '-1' to exit) >> "
      color = gets.chomp.to_s
        break if color == "-1"
    #break if (name || color) == "-1" Если оставить это условие, и убрать строки 16 и 19. Прерывание будет работать неправильно
    pok_sample = {name: name, color: color} 
    pok_arr.push(pok_sample)
    end
  pokemon = pok_arr  
  else pokemon = "You have not any pokemons"  
  end
end
puts pokemon
