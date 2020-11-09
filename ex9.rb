# 上のプログラムで、 Student クラスのメソッドとして affiliation メソッドを定義し、その学生の大学名と学部名をつなげた文字列を返すようにせよ。( PStudent と EStudent に定義するのではないことに注意)

class Student
  def initialize(n)
    @name = n
  end
  def name
    @name
  end
  def affiliation
    return university + faculty
  end
end

class KeioStudent < Student
  def university
    '慶應義塾大学'
  end
end

class PStudent < KeioStudent
  def faculty
    '総合政策学部'
  end
end

class EStudent < KeioStudent
  def faculty
    '環境情報学部'
  end
end

taro = PStudent.new('太郎')
hanako = EStudent.new('花子')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
puts "#{hanako.name}は#{hanako.affiliation}の学生です。"