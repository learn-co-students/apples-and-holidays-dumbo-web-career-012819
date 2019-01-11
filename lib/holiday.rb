require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  event = nil
  holiday_hash.each do |season, holiday|
    if season == :summer
      event = holiday.values.flatten[1]
    end
  end
  event
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
       holiday.each do |holiday, decoration|
         decoration.push(supply)
       end
    end
  end
  holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, decoration|
        decoration.push(supply)
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = nil
  holiday_hash.collect do |season, holiday|
    if season == :winter
       winter_supplies = holiday.values.flatten
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holiday|
        puts "#{season.to_s.capitalize}:"
      holiday.each do |holiday, decoration|
          puts "\s #{holiday.to_s.tr("_", " ").split.map(&:capitalize).join(" ")}: #{decoration.join(", ")}"
      end
    end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  seasons = []
  holiday_hash.collect do |season, holiday|
    if season == :summer || season == :spring
      seasons.push(holiday.keys)
    end
  end
  # include the string "BBQ"
  seasons.flatten
end
