require "./players"
require "./questions"

puts "Ready to Play?"
puts "Insert Player 1's name here:"
name1 = gets.chomp
player1 = Player.new(name1)
puts "Insert Player 2's name here:"
name2 = gets.chomp
player2 = Player.new(name2)
puts "Let's Begin!"

current_player = 1

  while player1.lives > 0 && player2.lives > 0 
    num1 = rand(1..30)
    num2 = rand(1..30)
    
    gameplayer = (current_player == 1) ? player1 : player2
    puts "----- NEW TURN -----"
    puts "#{gameplayer.name}: What does #{num1} plus #{num2} equal?"
    response = gets.chomp.to_i

    if response == (num1 + num2)
      puts gameplayer.congratulate

    else 
      puts gameplayer.trash
      gameplayer.lives -= 1
    end

    puts "#{player1.name}: #{player1.lives}/3 vs. #{player2.name}: #{player2.lives}/3"
    current_player = (current_player +1) % 2
  end

  if player1.lives == 0 
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
  else 
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
  end

puts "----- GAME OVER -----"