class Tennis

  def initialize
    @player_one_score = 0
    @player_two_score = 0
  end

  def current_score
    [@player_one_score, @player_two_score]
  end

  def player_scores(player)
    if player == "player_1"
      @player_one_score += 1
    elsif player == "player_2"
      @player_two_score += 1
    end
  end
end
