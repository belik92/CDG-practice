#👉 Написать скрипт, который будет принимать слово, если слово заканчивается на “CS”
#- выводит на экран цифру 2 в степени (длины введенного слова), если не заканчивается - выводит слово задом наперед

require 'rspec'
require './string_game.rb'

RSpec.describe "convert_str" do
  it "#1_convert" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("pikachu")
    expect(str_convert).to eq("uhcakip")
  end

  it "#1_double" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("pikachuCS")
    expect(str_convert).to eq(512)
  end
end