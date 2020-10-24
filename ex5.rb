# --- start --- #
# 上のプログラムを拡張し、わからない英語を入力されたら日本語訳を教えてもらって覚えるようにせよ。
# % ruby dict.rb
# 英語：sheep
# sheepの日本語訳を教えてください：羊
# 英語：sheep
# 日本語：羊
# 英語：
# --- end --- #
dictionary = { 'dog' => '犬', 'cat' => '猫' }

loop do
  print '英語：'
  x = gets.chomp
  if dictionary[x]
    puts "日本語：#{dictionary[x]}"
  else
    puts "わかりません。日本語訳を教えて下さい。"
    y = gets.chomp
    dictionary[x] = y
  end
end