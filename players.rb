# Player class will track player lives, banter
class Player 
  attr_accessor :name, :lives, :trash, :congratulate

  def initialize(name)
    @name = name
    @lives = 3
  end

  def trash
    "Seriously? No!"
  
  end
  
  def congratulate
    "YES! You are correct."
  end
  
end