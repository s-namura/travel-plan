# active_supportの読み込み
require 'active_support'
require 'active_support/core_ext/numeric/conversions'

# 旅行プランデータ
travel_plans = ["沖縄旅行（¥10,000）","北海道旅行（¥20,000）", "九州旅行（¥15,000）"]
plan_prices = [10000,20000,15000]

# 旅行プラン提示
puts "今回のお勧めプランです！"
travel_plans.each.with_index(1) do |travel_plan,i|
  puts "#{i}: #{travel_plan} "
end

# プラン選択
print "プランを選択して下さい。"
while true
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts <<~TEXT
    申し訳ありません。選択した番号はございません。
    正しい選択番号(1〜3)を入力してください
  TEXT
end
# プラン確認・人数入力
case plan_num
when 1
  price = plan_prices[plan_num-1]
  puts "#{travel_plans[plan_num-1]}ですね。何人で行きますか？"
when 2
  price = plan_prices[plan_num-1]
  puts "#{travel_plans[plan_num-1]}ですね。何人で行きますか？"
when 3
  price = plan_prices[plan_num-1]
  puts "#{travel_plans[plan_num-1]}ですね。何人で行きますか？"
end

# 旅行代金
puts "---------------------------------"
print "人数を入力  "
people = gets.to_i
puts "---------------------------------"
puts ""
if people >= 5
	puts "5人以上なので10％割引となります"
	puts "---------------------------------"
	total_price = price * people * 0.9
else
	total_price = price * people
end
puts "ありがとうございます！"

puts "合計料金："+"¥#{total_price.floor.to_s(:delimited, delimiter: ',')}です。"
