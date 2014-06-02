class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    winner=player1.last + player2.last
    raise RockPaperScissors::NoSuchStrategyError, 'Strategy must be one of R,P,S' if player2[1].match(/[^RPS]/)
    return player1 if winner=~(/((RS|SP|PR)|(RR|SS|PP))/)
    return player2

  end

  def self.tournament_winner(tournament)

  	if tournament[0][0].is_a?(String)
  	return winner(tournament[0],tournament[1])
  else
return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
	end
  end

end
