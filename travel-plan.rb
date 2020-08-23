# active_supportの読み込み
require 'active_support'
require 'active_support/core_ext/numeric/conversions'
require 'pry'

# 旅行プランデータ
travel_plans = [
	{ place: "沖縄", price: 10000 },
	{ place: "北海道", price: 20000 },
	{ place: "九州", price: 15000 }  
]

# 旅行プラン提示
def info(travel_plans)
	puts "今回のお勧めプランです！"
	travel_plans.each.with_index(1) do |travel_plan,number|
		puts "#{number}:#{travel_plan[:place]}旅行 (¥#{travel_plan[:price]})"
	end
end

# プラン選択
def plan_select(travel_plans)
	print "プランを選択して下さい。"
	while true
  	plan_num = gets.to_i
  	break if (1..3).include?(plan_num)
  	puts <<~TEXT
    申し訳ありません。選択した番号はございません。
    正しい選択番号(1〜3)を入力してください
 		TEXT
	end
	selected_number = plan_num
	selected_travel_plan = travel_plans[selected_number -1] 
  puts "#{selected_travel_plan[:place]}旅行が選択されました"
  puts "金額はお一人様#{selected_travel_plan[:price]}円です"
  selected_price = selected_travel_plan[:price]  #メソッドの最後の値
end

# 人数入力・旅行代金計算
def plan_price(selected_price)
	tanka = selected_price
	puts "---------------------------------"
	print "人数を入力  "
	people = gets.to_i
	puts "---------------------------------"
	puts ""
	if people >= 5
		puts "5人以上なので10％割引となります"
		puts "---------------------------------"
		total_price = tanka * people * 0.9
	else
		total_price = tanka * people
	end
	puts "ありがとうございます！"
	puts "合計料金："+"¥#{total_price.floor.to_s(:delimited, delimiter: ',')}です。"

end

info(travel_plans)
plan_select(travel_plans)
binding pry
plan_price(selected_price)
