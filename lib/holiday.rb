require 'pry'




def  second_supply_for_fourth_of_july(holiday_hash)
  

   return holiday_hash[:summer][:fourth_of_july][1]

end


def add_supply_to_winter_holidays(hash, item)
   
   
  
   hash[:winter][:christmas] << item
   
   hash[:winter][:new_years] << item
  
   end



def add_supply_to_memorial_day(hash, supply)
  
   hash[:spring][:memorial_day] << supply

end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season] = {holiday_name => supply_array} 
  
end



def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.join(" ")
  

end

def all_supplies_in_holidays(holiday_hash)
  puts <<-TEXT
"Winter:"
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT
  
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.map {|key,val| val? == "BBQ"
    if hash = [] << key 
      puts hash
    else
     }
  end
  
  hash
end







