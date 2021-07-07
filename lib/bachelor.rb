require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    contestant.each do |keys, data|
      if contestant["status"] == "Winner"
        first_name = contestant["name"].split(" ")
          return first_name[0];
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_no, contestants|
    contestants.each do |contestant|
      contestant.each do |keys, values|
        if occupation == values
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |keys, values|
        if hometown == values
          count += 1 
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |keys, values|
        if hometown == values
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  people = 0
  data[season].each do |contestant|
    people += 1
    sum += contestant["age"].to_f
  end
  avg = sum / people
  avg.round
end
