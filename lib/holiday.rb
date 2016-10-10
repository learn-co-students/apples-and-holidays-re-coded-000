require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |k,v|
    if k==:winter
      v.each do |a,b|
        b.push(supply)
      end
  end
end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  return holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_hash[season][holiday_name]=supply_array
   return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr=[]
holiday_hash[:winter].each do |k,v|
  v.each do |e|
    arr.push(e)
  end
end
return arr
end


def all_supplies_in_holidays(holiday_hash)
  # etc.
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  block=[]
  str=""
  holiday_hash.each do |k,v|
    str=k.to_s.capitalize+":"
    block.push(str)
    v.each do |a,b|
      if a.to_s.include? "_"
        a_=a.to_s.split("_")
      else
        a_=a.to_s.split(" ")
      end
      c=0
      a_.each do |i|
        a_[c]=i.capitalize
        c+=1
      end
       a=a_.join(" ")#.capitalize
       str="  "+a+": "

       c=0
       while(c<b.size)
          str=str+b[c]
          if b[c]==b[b.size-1]
            break
          else
           str=str+", "
         end
        c+=1
       end
       block.push(str)
    end
  end
  block.each do |e|
    puts e
  end
end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr=[]
  holiday_hash.each do |k,v|
    v.each do |a,b|
    arr.push(a) if   b.any? { |e| e=="BBQ"  }
    end
  end
    #if items.include?("BBQ")
return arr
  end
