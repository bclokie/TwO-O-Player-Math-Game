class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def current_player
    @current_player
  end

  def next_turn
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def over?
    @player1.dead? || @player2.dead?
  end

  def winner
    @player1.dead? ? @player2 : @player1
  end
end
