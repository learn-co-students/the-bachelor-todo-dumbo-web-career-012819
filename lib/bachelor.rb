require "pry"
def get_first_name_of_season_winner(data, season)
  winner_name = []
  data.each do |seasons, contestants|
    data[season].each {|individual| winner_name = individual["name"].split if individual["status"] == "Winner"}
  end
  winner_name[0]
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each {|individual| return individual["name"] if individual["occupation"] == occupation}
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seaons, contestants|
    contestants.each {|individual| counter += 1 if individual["hometown"] == hometown}
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each {|individual| return individual["occupation"] if individual["hometown"] == hometown}
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestant = 0
  data.each do |seasons, contestants|
    data[season].each do |individual|
      total_age += individual["age"].to_f
      total_contestant += 1
    end
  end
  (total_age/total_contestant).round
end
