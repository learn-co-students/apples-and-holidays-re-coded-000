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
########################
holiday_supplies=
  {
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
  ###################################
 puts all_holidays_with_bbq(holiday_supplies)
