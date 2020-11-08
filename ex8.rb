# 次のようなメソッドを持つ預金口座のクラスを定義せよ。ただし、残高より多い金額は引き出したり振り込んだりできないので、その場合はエラーメッセージを出力し、残高は変えないものとする。

# 残高を調べる
# 金額を指定して預ける
# 金額を指定して引き出す
# 相手の口座と金額を指定して振り込む
# なお、残高不足のメッセージを表示するところは、プログラム内で一箇所だけにすること。

class Account
    attr_accessor :money

    def initialize(m = 0)
        @money = m
    end

    def deposit(x)
        @money += x
    end

    def withdraw(x)
        @money -= x
    end

    def transfer(x, y)
        @money -= y
        x.money += y
    end

    def balance()
        return @money
    end
end

a = Account.new #aの口座
a.deposit(3000) #aの口座に3000円預ける
b = Account.new #bの口座
b.deposit(1000) #bの口座に1000円預ける
b.withdraw(500) #bの口座から500円引き出す
a.transfer(b, 2000) #aの口座からbの口座に2000円振り込む
puts a.balance #aの口座残高を表示
puts b.balance #bの口座残高を表示
b.transfer(a, 5000) #bの口座からaの口座に5000円振り込む