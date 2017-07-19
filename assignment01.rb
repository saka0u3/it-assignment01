 money = [10,50,100,500,1000]
 total = 0
 sales = 0
 drink = {:name => "コーラ", :price => 120, :value => 5}
 drink1 = {:name => "レッドブル", :price => 200, :value => 5}
 drink2 = {:name => "水", :price => 100, :value => 5}

 puts "投入金額を入力してください(※777：情報、888：払い戻し、999：購入)"
 loop do
   pay = gets.to_i
   if money.include?(pay)
    total += pay
    puts "総計#{total}円"
    if total >= drink[:price] && drink[:value] > 0
      puts "購入可"
    else
      puts "購入不可"
    end
  elsif pay == 999
    if  total >= drink[:price] && drink[:value] > 0
      drink[:value] -= 1
      sales += drink[:price]
      total -= drink[:price]
      puts "残高#{total}円"
    else
      puts "購入できません"
    end
  elsif pay == 888
      break
  elsif pay == 777
    puts "#{drink[:name]}/#{drink[:price]}円/#{drink[:value]}本"
  else
    puts "釣銭#{pay}円"
  end
 end
 puts "釣銭#{total}円"
 puts "売上#{sales}円"
