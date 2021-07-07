def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name_array = contestant["name"].split(" ")
      return name_array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end

  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  contestants_array = data[season]

  contestants_array.each do |contestant|
    age = contestant["age"].to_f
    sum += age
  end

  return (sum / contestants_array.length).round
end
