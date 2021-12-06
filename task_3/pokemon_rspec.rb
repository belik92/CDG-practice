#Написать скрипт, который будет выводить массив покемонов
#Спросит сколько добавить покемонов
#Указанное на предыдущем этапе число раз спросит имя и цвет каждого покемона
#Выведет в консоль массив содержащий хеши покемонов в формате 
#`[{ name: 'Pikachu', color: 'Yellow' }, … n times{}]`
#Код должен быть организован в методы

require 'rspec'
require './pokemon.rb'

RSpec.describe "pokemon_family" do
  it "#1_pokemon" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(1, "pikachu", "yellow")
    expect(pokemon).to eq([{name: "pikachu", color: "yellow"}])
  end

  it "#end_pokemon" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "pikachu", "green", "-1")
    expect(pokemon).to eq([{name: "pikachu", color: "green"}])
  end

  it "#zero_pokemon" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(0)
    expect(pokemon).to eq("You have not any pokemons")
  end
end