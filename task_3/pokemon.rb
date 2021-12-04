#Написать скрипт, который будет выводить массив покемонов
#Спросит сколько добавить покемонов
#Указанное на предыдущем этапе число раз спросит имя и цвет каждого покемона
#Выведет в консоль массив содержащий хеши покемонов в формате 
#`[{ name: 'Pikachu', color: 'Yellow' }, … n times{}]`
#Код должен быть организован в методы

def pokemon
  pok_arr = []
  print "input number >> "
  i = gets.to_i
  if i > 0
    i.times do    
    print "input pokemons name (put end to exit) >> "
    name = gets.chomp.to_s
    print "input pokemons color(put end to exit) >> "
    color = gets.chomp.to_s
    pok_sample = {:name => name, color: color} 
    pok_arr.push(pok_sample)
    break if (name || color) == "end"
    end
  pokemon = pok_arr  
  else pokemon = "You have not any pokemons"  
  end
end
puts pokemon
