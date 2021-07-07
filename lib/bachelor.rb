require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |key|
    key.each do |key_2, value|
      if value == "Winner"
        return key["name"].split.first

    end
   end
  end
 end


def get_contestant_name(data, occupation)
  data.each do |key,value|
    value.each do |info|
      if info["occupation"] == occupation
        return info["name"]

    end
   end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key,value|
    value.each do |info|
      if info["hometown"] == hometown
        counter = counter + 1
   end
  end
 end
 counter
end

def get_occupation(data, hometown)
  data.each do |key,value|
    value.each do |info|
      if info["hometown"] == hometown
      return  info["occupation"]
        break
   end
  end
 end
end

def get_average_age_for_season(data, season)
   age = []
data[season].each do |key|
   key.each do |data, info|
     if data == "age"
      age << info.to_f

  end
 end
end
final = age.inject(0){|age, index| age + index}/ age.length
return final.round

end
