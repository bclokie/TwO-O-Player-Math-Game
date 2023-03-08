require_relative 'game'

player1 = Player.new(1)
player2 = Player.new(2)
game = Game.new(player1, player2)

until game.over?
  current_player = game.current_player
  question = Question.new
  answer = UI.prompt(current_player, question)
  if answer == question.answer
    UI.correct
  else
    UI.incorrect(current_player)
    current_player.lose_life
  end
  UI.scoreboard(game)
  game.next_turn
end

UI.announce_winner(game.winner)
