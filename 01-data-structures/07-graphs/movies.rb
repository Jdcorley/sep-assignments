require_relative 'chris_p_bacon'
require_relative 'node'

Kevin_Bacon = Actor.new("Kevin Bacon")
Brittany_Murphy = Actor.new("Brittany Murphy")
Gary_Sinise = Actor.new("Gary Sinise")
Dan_Hedaya = Actor.new("Dan Hedaya")

Apollo_13 = Film.new("Apollo 13")

Kevin_Bacon.add_to_film(Apollo_13)
Gary_Sinise.add_to_film(Apollo_13)

Ranson = Film.new("Ranson")

Dan_Hedaya.add_to_film(Ranson)
Gary_Sinise.add_to_film(Ranson)


Clueless = Film.new("Clueless")
Brittany_Murphy.add_to_film(Clueless)
Dan_Hedaya.add_to_film(Clueless)

Dan_Hedaya.find_kevin_bacon