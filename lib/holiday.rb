require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, item| item << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  list = []
  holiday_hash[:winter].each do |holiday, item|
    item.each {|supply| list << supply}
  end
  
  list  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    
    holiday.each do |day, item|
      arr = day.to_s.split("_")
      arr.each {|word| word.capitalize!}
      capitalized = arr.join(" ")
      list = item.join(", ")
      puts "  #{capitalized}: #{list}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  list = []
  
  holiday_hash.each do |season, holiday|
    holiday.each do |day, item|
      item.each {|supply| list << day if supply == "BBQ"}
    end
  end
  
  list
end







