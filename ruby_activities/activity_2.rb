def is_perfect_square(num)
    if num <= 0
        puts false
    end
    
    num1 = 0
    num2 = 1

    while num1 < num
        num1 += 1
        num2 += 2
    end

    num1 == num

end


    