# 旅行プラン提示
puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行   （¥10,000）
2. 北海道旅行  (¥20,000）
3. 九州旅行   （¥15,000）
TEXT
puts ""

# プラン選択
print "プランを選択"
while true
   plan = gets.to_i
   break if (1..3).include?(plan)
   puts <<~TEXT
   選択した番号はありません
   正しい選択番号(1〜3)を入力してください
   TEXT
end

# プラン確認・人数入力
case plan
when 1 then
	price = 10000
	puts "沖縄旅行ですね。何人で行きますか？"
when 2 then
	price = 20000
	puts "北海道旅行ですね。何人で行きますか？"
when 3
	price = 15000
	puts "九州旅行ですね。何人で行きますか？"
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
puts ""

puts "合計料金："+"¥#{total_price.floor}"
