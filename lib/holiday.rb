require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_supplies = {
                        :winter => {
                           :christmas => ["Lights", "Wreath"],
                           :new_years => ["Party Hats"]
                           },
                        :summer => {
                           :fourth_of_july => ["Fireworks", "BBQ"]
                         },
                         :fall => {
                           :thanksgiving => ["Turkey"]
                         },
                         :spring => {
                           :memorial_day => ["BBQ"]
                         }
                       }
 end

 def second_supply_for_fourth_of_july(holiday_supplies)
   holiday_supplies[:summer][:fourth_of_july][1]
 end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter][:christmas] << supply
   holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.collect do |key, value|
    if key = season
      value[holiday_name] << supply_array
    end
  end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  apple = holiday_hash[:winter].values
  apple.to_s
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, values|
    key1 = key.to_s
    key2 = key1 <<":"
    puts key2.capitalize
    values.each do |atrr, value|
      apple = atrr.to_s.titleize.gsub('_',' ')
      cat = value.to_s.gsub("[","").gsub('"','').gsub(']','')
      puts "  " + apple + ": " + cat
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
