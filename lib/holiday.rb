require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]

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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday,supplies|
  supplies << supply
end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season,holiday_name, supply)
holiday_hash[season][holiday_name]=supply

end

def all_winter_holiday_supplies(holiday_hash)
  res=[]
holiday_hash[:winter].each do |holiday,supplies|
  res<<supplies
end
res.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,holiday|

    # Within the first loop, 'season' looks like this:
    # season[1].each do |holiday|
      # puts "This is what holiday[0] equals: #{holiday[0]}"o
      puts "#{season.to_s.capitalize}:"
      holiday.each do |key,value|
    # puts holiday[0].to_s.split("_").collect{|element| element.capitalize}.join(" ")
       puts "  " + key.to_s.split("_").collect {|w| w.capitalize }.join(" ") + ": "+ "#{value.join(", ")}"
      end
  end
    # [:season, {:holiday => ["Supply 1", "Supply 2"]}]

  end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_name=[]
     holiday_hash.collect do |season,holiday|
     holiday.collect do |name,supply|
       if supply.include?("BBQ")
         holiday_name<< name
       end
     end
     end
     holiday_name
end
