require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, girls|
    girls.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, girls|
    girls.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown 
        counter +=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, girls|
    girls.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  age_of_girls = 0 
  count = 0 
  data[season].each do |contestant_hash|
    age_of_girls += (contestant_hash["age"]).to_i
    count +=1
  end 
  (age_of_girls / count.to_f).round(0)
end
