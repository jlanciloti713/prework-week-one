def tic_tac_toe
  game = {
    board: [[1, 2, 3], [4, 5, 6], [7, 8, 9,]],
    player: "X",
    winner: false

  }

  puts "Play TIC-TAC-TOE!"

  9.times do
    sleep(1)
    puts "The Board:"
    puts "#{game[:board][0][0]} | #{game[:board][0][1]} | #{game[:board][0][2]}"
    puts "---------"
    puts "#{game[:board][1][0]} | #{game[:board][1][1]} | #{game[:board][1][2]}"
    puts "---------"
    puts "#{game[:board][2][0]} | #{game[:board][2][1]} | #{game[:board][2][2]}"


    puts "It's #{game[:player]}'s turn. Pick a space on the Board by typing a number and hitting enter."
    user_choice = gets.chomp.to_i
    
    while !game[:board].flatten.include?(user_choice)
      puts "That's not an available space, CHOOSE ANOTHER."
      user_choice = gets.chomp.to_i
    end

    row_index = (user_choice / 3.0).ceil - 1
    col_index = game[:board][row_index].index(user_choice)

    game[:board][row_index][col_index] = game[:player]

    game[:winner] = true if game[:board][0][0] == game[:board][0][1] && game[:board][0][0] == game[:board][0][2]
    game[:winner] = true if game[:board][1][0] == game[:board][1][1] && game[:board][1][0] == game[:board][1][2]
    game[:winner] = true if game[:board][2][0] == game[:board][2][1] && game[:board][2][0] == game[:board][2][2]
    game[:winner] = true if game[:board][0][0] == game[:board][1][0] && game[:board][0][0] == game[:board][2][0]
    game[:winner] = true if game[:board][0][1] == game[:board][1][1] && game[:board][0][1] == game[:board][2][1]
    game[:winner] = true if game[:board][0][2] == game[:board][1][2] && game[:board][0][2] == game[:board][2][2]
    game[:winner] = true if game[:board][0][0] == game[:board][1][1] && game[:board][0][0] == game[:board][2][2]
    game[:winner] = true if game[:board][0][2] == game[:board][1][1] && game[:board][0][2] == game[:board][2][0]

    if game[:winner]
      puts "The game is over! #{game[:player]} reigns supreme."
      break
    elsif game[:player] == "X"
        game[:player] = "O"
    elsif game[:player] == "O"
      game[:player] = "X"
    end
  end
  if !game[:winner]
    puts "The games is over! You both lose."
  end
end

tic_tac_toe