#### Retrieve all players, then write a program that will loop through each player and display their team name, mascot and stadium. How many queries have we done?
Player.all.each do |player|
  puts player.team.name
  puts player.team.mascot
  puts player.team.stadium
end
Many, many joins

#### Retrieve all players, then write a program that will loop through each player and display their team name, mascot and stadium. How many queries have we done?
Player.includes(:team).each do |player|
  puts player.team.name
  puts player.team.mascot
  puts player.team.stadium
end
Fewer queries

#### Retrieve all players from the 'Chicago Bulls' by using .includes
Player.includes(:team).where("teams.name = 'Chicago Bulls'")

#### Retrieve all players along with the team name that play at the 'Staples Center'
Player.joins(:team).select('players.name, teams.stadium').where('teams.name = "Staples Center"')

#### Retrieve all players from the 'Chicago Bulls' by using .includes and .joins
Team.joins(:players).where("players.name LIKE '%Z'")
