# 旅行プラン提示
puts "旅行プランを選択してください"
puts "1. 沖縄旅行 　（￥10,000）"
puts "2. 北海道旅行 （￥20,000）"
puts "3. 九州旅行   （￥15,000）"
puts ""

# プラン選択
print "プランを選択　"

plan = gets.to_i
if plan ==1 || plan ==2 || plan ==3
        puts ""
else
        puts "選択した番号はありません"
        puts "正しい選択番号を入力してください"
        puts "１ 沖縄　２ 北海道　３ 九州　の中から選んでください"
        plan = gets.to_i
end        

# プラン確認・人数入力
if     plan == 1
        price = 10000
        puts "沖縄旅行ですね。何人で行きますか？"
elsif  plan == 2
        price = 20000
        puts "北海道旅行ですね。何人で行きますか？"
else   plan == 3
        price = 15000
        puts "九州旅行ですね。何人で行きますか？"
end


# 旅行代金
 puts "---------------------------------"
 print "人数を入力　  "
 people = gets.to_i
 puts "---------------------------------"
 puts ""
if people >= 5
    puts "5人以上なので10％割引となります"
    puts "---------------------------------"
    price = price * people * 0.9
else
    price = price * people
end
puts ""

puts "合計料金："+"￥#{price.floor}"