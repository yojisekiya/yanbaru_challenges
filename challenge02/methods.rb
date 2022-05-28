def disp_destinations(destinations)
  puts '旅行プランを選択して下さい。'
  destinations.each.with_index(1) do |destination, i|
    puts "#{i}.#{destination[:name]}（#{destination[:price]}円）"
  end
end

def choose_destination(destinations)
  while true
    print 'プランの番号を選択 > '
    chosen_destination_num = gets.to_i
    break if (1..3).include?(chosen_destination_num)

    puts '1〜3の番号を入力して下さい。'
  end
  destinations[chosen_destination_num - 1]
end

def decide_num_people(chosen_destination)
  puts "#{chosen_destination[:name]}ですね。"
  while true
    puts '何名で予約されますか？'
    print '人数を入力 > '
    num_travellers = gets.to_i
    break if num_travellers > 0

    puts '1人以上選んでください'
  end
  num_travellers
end

def calculate_total(chosen_destination, num_travellers)
  puts "#{num_travellers}名ですね。"
  total = num_travellers * chosen_destination[:price].to_i
  if num_travellers > 4
    puts '5名以上ですので10%割引となります。'
    total *= 0.9
  end
  puts "合計料金は#{total.to_i}円になります。"
end
