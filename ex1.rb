p = gets.to_i
n = 1
x = p
p.times do
    print " " * x
    puts "*" * n
    n = n + 2
    x = x - 1
end