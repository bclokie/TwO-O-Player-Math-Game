module UI
  def self.welcome
    puts "Welcome to the 2-Player Math Game!"
  end

  def self.prompt(player, question)
    print "#{player}: #{question} "
    gets.chomp.to_i
  end

  def self.correct
    puts "Correct! You keep your life."
  end

  def self.incorrect(player)
    puts "Incorrect! #{player} loses a life."
  end

  def self.scoreboard(game)
    puts "Scoreboard: #{game.player1}: #{game.player1.lives}/3 vs #{game.player2}: #{game.player2.lives}/3"
  end

  def self.announce_winner(winner)
    puts "Game over! #{winner} wins with a score of #{winner.lives}/3."
    puts "Better luck next time, #{winner == winner.opponent ? winner.opponent.to_s + " (that's you)" : winner.opponent}."
  end
end
