class City
  attr_reader :name
  attr_accessor :visited
  attr_accessor :neighbors

  def initialize(name)
    @name = name
    @visited = false
    @neighbors = []
  end
end

def nearest_possible_neighbor(cities, starting_city)
   current_city = starting_city
   route = [starting_city.name]
   while current_city.visited == nil
     neighbor_cities = []
     for city in current_city.neighbors
       neighbor_cities.push(city) if cities.include? city[:city]
     end
     for city in neighbor_cities
       if city[:city].visited == nil
         next_city = city
         break
         end
     end
     break if current_city == next_city[:city]
    for current_neighbor in neighbor_cities
       if current_neighbor[:distance] < next_city[:distance] && !current_neighbor> 
        next_city = current_neighbor
        end
      end
current_city.visited = true
     current_city = next_city[:city]
    route.push(current_city.name)
  end
   route
end
 
 manhattan = City.new('Manhattan')
 hartford = City.new('Hartford')
 jersey_city = City.new('Jersey City')
 brooklyn = City.new('Brooklyn')
 bronx = City.new('Bronx')
 newark = City.new('Newark')
 queens = City.new('Queens')
 manhattan.neighbors.push(brooklyn, jersey_city, queens)
 nearest_possible_neighbor(cities = [brooklyn, bronx, jersey_city, queens], manhattan)