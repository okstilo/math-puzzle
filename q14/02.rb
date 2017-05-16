#!/usr/bin/env ruby

countries = [
  'Brazil', 'Croatia', 'Mexico', 'Cameroon', 'Spain',
  'Netherlands', 'Chile', 'Australia', 'Colombia', 'Greece',
  "Coat d'Ivoire", 'Japan', 'Uruguay', 'Costa Rica', 'England',
  'Italy', 'Switzerland', 'Ecuador', 'France', 'Honduras',
  'Argentina', 'Bosnia and Herzegovina', 'Iran', 'Nigeria', 'Germany',
  'Portugal', 'Ghana', 'USA', 'Belgium', 'Algeria',
  'Russia', 'Korea Republic'
]

def search(countries, prev, depth)
  next_country = countries.select { |c| c[0] == prev[-1].upcase }
  if !next_country.empty?
    next_country.each do |c|
      search(countries - [c], c, depth + 1)
    end
  else
    @max_depth = [@max_depth, depth].max
  end
end

@max_depth = 0
countries.each do |c|
  search(countries - [c], c, 1)
end

puts @max_depth
