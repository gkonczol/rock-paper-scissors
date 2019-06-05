class Game

  attr_reader :started, :wins_rock, :wins_paper, :wins_scissors

  def start
    @started = true
    @wins_rock = 0
    @wins_paper = 0
    @wins_scissors = 0
  end

  def started?
    self.started || false
  end

  def finished?
    if (wins_rock > 0 || wins_paper > 0 || wins_scissors > 0)
      if((wins_rock != wins_paper && wins_rock != wins_scissors) ||
        (wins_paper != wins_scissors && wins_paper != wins_rock) ||
        (wins_scissors != wins_paper && wins_scissors != wins_rock))
        true
      else
        false
      end
    else
      false
    end
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors) #rock scissors
      @wins_rock += 1
      "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      @wins_rock += 1
      "Rock beats scissors!"
    elsif (left == :rock && right == :paper) #rock paper
      @wins_paper += 1
      "Paper beats rock!"
    elsif (left == :paper && right == :rock)
      @wins_paper += 1
      "Paper beats rock!"
    elsif (left == :scissors && right == :paper) #scissors paper
      @wins_scissors += 1
      "Scissors beats paper!"
    elsif (left == :paper && right == :scissors)
      @wins_scissors += 1
      "Scissors beats paper!"
    elsif (left == :scissors && right == :scissors) #scissors scissors
      "Tie game. Try again!"
    elsif (left == :paper && right == :paper) #paper paper
      "Tie game. Try again!"
    elsif (left == :rock && right == :rock) #rock rock
      "Tie game. Try again!"
    else
      :UNKNOWN
    end
  end

end