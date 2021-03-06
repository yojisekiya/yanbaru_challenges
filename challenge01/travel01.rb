puts <<~TEXT
  旅行プランを選択して下さい。

  1. 沖縄旅行（10000円）
  2. 北海道旅行（20000円）
  3. 九州旅行（15000円）

TEXT

while true
  print 'プランの番号を選択 > '
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)

  puts '1〜3の番号を入力して下さい。'
end

case plan_num
when 1
  place = '沖縄'
  price = 10_000
when 2
  place = '北海道'
  price = 20_000
when 3
  place = '九州'
  price = 15_000
end

puts "#{place}ですね。"
puts "'何名で予約されますか？"
while true
  print '人数を入力 > '
  travellers = gets.to_i
  break if travellers > 0

  puts '1名以上選んでください。'
end

if travellers > 4
  puts "#{travellers}名ですね。"
  puts '5名以上ですので10%割引となります。'
  total = price * travellers * 0.9
  puts "合計金額は#{total.to_i}円になります。"
else
  puts "#{travellers}名ですね。"
  total = price * travellers
  puts "合計金額は#{total.to_i}円になります。"
end
