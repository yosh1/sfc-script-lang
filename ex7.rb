# 2個の配列とブロックを受け取り、配列の各要素ごとにブロックで指定された演算を行うメソッド arraycalc を作れ。
# 例えば、 arraycalc([1,2,3], [4,5,6]){|x,y| x*y} は [4,10,18] を返す。
# ただし、引数が配列でない場合や、要素の個数が一致しない場合は考えなくてよい。

def arraycalc(arr1, arr2)
  arr = []
  arr1.count.times do |count|
    # 引数をパラメーターに渡す→実行
    arr << yield(arr1[count], arr2[count])
  end
  p arr
end
arraycalc([1, 2, 3], [4, 5, 6]) {|x, y| x * y}