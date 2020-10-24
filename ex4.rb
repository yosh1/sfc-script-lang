# --- start --- #
#
# キーボードから0より大きい数値をいくつか入力していき、0が入力されたらそれまでの数値を逆順に表示するプログラムを作れ。
# ただし reverse を使ってはいけない。（ヒント：配列に要素を追加するには push 、取り出すには pop を使う。）
# % ruby reverse.rb
# 数値? 30
# 数値? 5
# 数値? 10
# 数値? 0
# 10
# 5
# 30
#
# --- end --- #

array = []

while true do
    print '数値? '
    num = gets.to_i
    if (num == 0) then
        n = array.length
        n.times do 
           puts array[n - 1]
           n = n - 1
        end
        break
    else
        array.push(num)   
    end
end