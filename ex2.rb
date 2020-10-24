# 引数として数値を1個受け取り、それが素数なら true そうでなければ false を返すメソッド(関数)を作れ。
# 次に、 gets.to_i で数値を入力し、上の関数を呼び出して素数かどうか判定して、素数ならYes、素数でなければNoと出力するようにせよ。

def prime_check(n)
    if (n == 1 || n == 2)
        return false
    end
  start = 2
  n.times do 
    if((n % start) == 0 && (n != start)) 
      return false
      break
    end
    start = start + 1
  end
  return true
end

if prime_check(gets.to_i) == true
    puts "Yes"
else
    puts "No"
end
