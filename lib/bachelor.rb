require "pry"


def get_first_name_of_season_winner(data, season)
  data[season][0]["name"].split.first
end

=begin
def get_first_name_of_season_winner(data, season)
  data[season].each do |info_hash|
  	if info_hash["status"] == "Winner"
  		return info_hash["name"].split.first
  	end
  end
end
=end

def get_contestant_name(data, occupation)
  data.values.each do |info_hash|
  	  info_hash.each do |one_person|
  		if one_person["occupation"] == occupation 		
  			return one_person["name"]
  		end
  	  end
  end
end

def count_contestants_by_hometown(data, hometown)
  town_counter = 0
  data.values.each do |info_hash|
  	info_hash.each do |one_person|
  		if one_person["hometown"] == hometown
  			town_counter += 1
  		end
  	end
  end
  town_counter
end

def get_occupation(data, hometown)
	data.values.each do |info_hash|
		info_hash.find do |one_person|
			if one_person["hometown"] == hometown
				return one_person["occupation"]
			end
		end
	end
end

def get_average_age_for_season(data, season)
  all_ages = []
  data[season].each do |one_person|
  		all_ages << one_person["age"].to_f
  end
  (all_ages.sum / all_ages.length).round
end
