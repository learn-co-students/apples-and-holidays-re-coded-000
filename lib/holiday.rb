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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_supplies.each do |season,holiday_name|
          if season == :winter
                  holiday_name.each do |holiday,situation|
                  situation<<supply
                  end
          end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies.each do |season,holiday_name|
        if season == :spring
                holiday_name.each do |holiday,situation|
                situation<<supply
                end
        end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name]=supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,holiday_name|
  puts "#{season.capitalize}:"
    holiday_name.each do |time,name|
      if time.inspect.include?(":")
        new_time = time.inspect.split(":")
        if new_time[1].include?("_")
          new_time = new_time[1]
        if new_time.inspect.include?("_")
        new_time_2 = new_time.split("_")
        aa= new_time_2.collect do |any|
          any.capitalize
        end
        bb=aa.join(" ")
        puts "  #{bb}: #{name.join(", ")}"
      end
        else
        puts  "  #{time.capitalize}: #{name.join(", ")}"
        end

      end
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq=[]
  holiday_hash.each do |index,element|
  element.each do |name,picnic|
    if picnic.include?("BBQ")
      bbq << name
    end
  end
  end
return bbq
end
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
all_holidays_with_bbq(holiday_supplies)
