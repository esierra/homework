class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
if player1[1].eql?(player2[1])
	return player1
elsif player1.last.eql?("R") and player2.last.eql?("S")
	return player1
elsif player1.last.eql?("P") and player2.last.eql?("S")
	return player2
elsif player1.last.eql?("S") and player2.last.eql?("R")
	return player2
elsif player1.last.eql?("R") and player2.last.eql?("P")
	return player2
elsif player1.last.eql?("P") and player2.last.eql?("R")
	return player1
elsif player1.last.eql?("S") and player2.last.eql?("P")
	return player1	
end


 if player1[1]!="R" or player1[1]!="S" or player1[1]!="P" and  (player2[1]!="R" or player2[1]!="S" or player2[1]!="P")
raise RockPaperScissors::NoSuchStrategyError, 'Strategy must be one of R,P,S'
	end
end

  def self.tournament_winner(tournament)
  	if tournament[0][0].is_a?(String)
  	return winner(tournament[0],tournament[1])
  else
return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
	end
end
end
