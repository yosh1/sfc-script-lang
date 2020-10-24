def prime_check()
    begin
        n = gets.to_i
        if (n <= 2)
            raise RuntimeError
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
    rescue RuntimeError
        puts "2より大きい数を入力してください。"
        retry
    end
end

if prime_check() == true
    puts "Yes"
else
    puts "No"
end
