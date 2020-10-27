# 単語リスト の中で最も長い単語を探して出力するプログラムを書け。ただし、文字列 line の長さは line.length でわかる。
# 同じ長さの単語が複数ある場合は、どれか一個だけ出力すればよい。

ans = ''

IO.foreach('ex6/words.txt', chomp: true) do |line|  # line にファイルの各行が代入される
    # もしans(最長単語)より長いなら
    if(line.length > ans.length)
        # ansに格納
        ans = line
    end
end

print ans