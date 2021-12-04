




def names
    puts "Введите имя покемона" 
    names = gets.chomp.to_s
  end
  
  def colors
    puts "Введите цвет покемона" 
    colors = gets.chomp.to_s
  end
  
  def pokemon
    pokemons = []
    count = 1 
    puts "Введите количество покемонов. (Для выхода нажмите -1)"
    input = gets.to_i
   
    loop do 
      if input != -1
        while count <= input do
          pokemon = {"name" => names ,"color" => colors}
          pokemons.push(pokemon)
          count +=1   
        end  
      end
      return @result = pokemons    
    end
  end
  
  pokemon
  puts @result