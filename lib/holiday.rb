require 'pry'
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
def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holname, supp|
      supp << supply
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)  #correct
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
      holiday.each do |holname, supplies|
        if holname.inspect.include?(":") then #if it's a symbol
        arr = holname.inspect.split(":")
        if arr[1].include?("_")
          strsplitarr = arr[1].split("_")
          captarr = strsplitarr.collect do |word|
            word.capitalize
          end
            holname = captarr.join(" ")
          else
            holname = arr[1].capitalize
          end
        end # end of first if statement
        puts "  #{holname}: #{supplies.join(", ")}"
      end
    end
end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  hol_with_bbq =[]
  holiday_hash.each do |s, hol|
    hol.each do |holname, supplies|
      if supplies.include?("BBQ")
        hol_with_bbq << holname
      end
    end
  end
  return hol_with_bbq
end
