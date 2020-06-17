require 'net/http'
require 'open-uri'
require 'json'
 
class GetBreeds
 
  URL = "https://api.thedogapi.com/v1/breeds?attach_breed=0"
 
  def get_all_breeds
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def breed_name
# we use the JSON library to parse the API response into nicely formatted JSON
  all_breeds = JSON.parse(self.get_all_breeds)
  all_breeds.collect do |breed|
    breed["name"]  
  end
end

def breed_temperament
    # we use the JSON library to parse the API response into nicely formatted JSON
      all_breeds = JSON.parse(self.get_all_breeds)
      all_breeds.collect do |breed|
        breed["temperament"]  
      end
    end

def breed_life_span
        # we use the JSON library to parse the API response into nicely formatted JSON
        all_breeds = JSON.parse(self.get_all_breeds)
        all_breeds.collect do |breed|
        breed["life_span"]  
        end
    end



 
end


life_span = GetBreeds.new
puts life_span.breed_life_span


# This goes with breed_temperament method
# breed_temp = GetBreeds.new
# puts breed_temp.breed_temperament

# This goes with breed_name method
# breed_names = GetBreeds.new
# puts breed_names.breed_name
 
# all_breeds = GetBreeds.new.get_all_breeds
# puts all_breeds
 