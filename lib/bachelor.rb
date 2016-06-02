require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    contestant.each do |key, value|
      if contestant["status"] == "Winner"
        name = contestant["name"].split(" ")
        return name[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |info|
      if info["occupation"] == occupation
        name = info["name"]
        return name
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        occupation = info["occupation"]
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = 0
  total = 1
  data[season].each do |contestant|
    total = total + contestant["age"].to_f
    contestants += 1
  end

  return (total / contestants).round
end
