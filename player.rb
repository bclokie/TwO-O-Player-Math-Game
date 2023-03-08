class Player
  attr_reader :id, :lives

  def initialize(id)
    @id = id
    @lives = 3
  end

  def to_s
    "Player #{@id}"
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    @lives == 0
  end
end
