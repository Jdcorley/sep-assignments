require relative 'node'

class BaconAtor 
  attr_accessor :checked 

  def initialize
    @checked
  end 

  def find_kevin_bacon(actor)
    movies = []
    @checked << actor 
    actor.film_actor_hash.each do |movie, actors|
      current_actor = nil
      actors.each do |a|
        current_actor = a.name 
        movies << movie && break if current_actor === 'Kevin Bacon'
        if !@checked.include?(a)
          check_again = find_kevin_bacon(a)
          movies << movie 
          movies += check_again 
        end 
      end 
      break if current_actor === 'Kevin Bacon'
    end 
    if movies.uniq.length > 6
      return "Uh oh someone ate all the bacon! None left for you."
    end 
    movies.uniq 
  end 
end 
