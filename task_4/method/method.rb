#Написать набор методов для работы с файлом:
#**index** - выводит все строки
#**find(id)** - находит конкретную строку в файле и выводит ее
#**where(pattern)** - находит все строки, где есть указанный паттерн
#**update(id, text)** - обновляет конкретную строку файла
#**delete(id)** - удаляет строку
#Id = line number
class File_commander
    def index
      file = File.open("test.txt")
      file_lines = file.readlines
      @file_lines = file_lines
      file.close
      puts @file_lines

    end
    def find_id
      last_string = @file_lines.length - 1
      @last_string = last_string
        puts "input string number from 0 to #{@last_string}"
      id = gets.to_i
      @id = id
      if id.between?(0, last_string)
        puts @file_lines[@id]
      else
        puts "You can input between 0 and #{@last_string}"
      end
    end
    def where_pattern
      puts "Input which word you want to find? >>>"
      pattern = gets.chomp.to_s
      answer = []
      File.foreach('test.txt').with_index do |line, index|
      number = index if line.include?(pattern)
      @answer = answer.push(number)
      @answer = @answer.compact
      @answer
      end
      puts @answer  
    end
      def update_id_text
        puts "input string number from 0 to #{@last_string} what you want modify"
        id_number = gets.to_i
        puts "text what you want to add ..."
        input_data = gets.chomp.to_s
        @file_lines[id_number] = input_data + "\r\n"
        File.write( "test.txt", @file_lines.join )
        puts @file_lines
      end
      def delete_id
        puts "input string number from 0 to #{@last_string} what you want delete"
        del_id = gets.to_i
       result = @file_lines.delete_at(del_id)
      
       File.write("test.txt", @file_lines.join)
       
        puts @file_lines
        
      end
end



