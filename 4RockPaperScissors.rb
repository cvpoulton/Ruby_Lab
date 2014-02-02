class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end
class SomethingWentWrong <  StandardError ; end

def rps_game_winner(game)

   raise WrongNumberOfPlayersError unless game.length == 2 # Make sure only two players
    
   if (not ["P","R","S"].include? game[0][1]) or (not ["P","R","S"].include? game[1][1]) # Check if strategies are valid
      raise NoSuchStrategyError

   elsif game[0][1] == game[1][1] # If same strategy then return first player as winner
      return game[0]
    
   elsif game[0][1] == "P"
      if game[1][1] == "R"
         return game[0]
      else
         return game[1]
      end

   elsif game[0][1] == "R"
      if game[1][1] == "S"
         return game[0]
      else
         return game[1]
      end
    
   elsif game[0][1] == "S"
      if game[1][1] == "P"
         return game[0]
      else
         return game[1]
      end
   end
    
   raise SomethingWentWrong
   
end


def rps_tournament_winner(tournament)
   if tournament[0][0].is_a? String # Base case for recursion
      return rps_game_winner(tournament)
   else
      return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]) # recurse down through tournament until actual game is found
   end
end


#### Examples ####
#a
print rps_game_winner([ ["Armando", "R"], ["Dave", "S"] ]) # ["Armando", "R"]
print "\n"
print rps_game_winner([ ["Chris", "P"], ["CSCI 3308", "S"] ]) # ["CSCI 3308", "S"]
print "\n"
print rps_game_winner([ ["Eddy", "R"], ["Life", "R"] ]) # ["Eddy", "R"]
print "\n"

#print rps_game_winner([ ["Sucker1", "R"], ["Sucker2", "R"], ["Sucker3", "R"] ]) # WrongNumberOfPlayersError
#print rps_game_winner([ ["Sucker4", "r"], ["Sucker5", "R"] ]) # NoSuchStrategyError


#b
print rps_tournament_winner(

   [
      [

         [ ["Armando", "P"], ["Dave", "S"] ],

         [ ["Richard", "R"],  ["Michael", "S"] ],

      ],

      [

         [ ["Allen", "S"], ["Omer", "P"] ],

         [ ["David E.", "R"], ["Richard X.", "P"] ]

      ]
   ]

) # ["Richard", "R"]
print "\n"

