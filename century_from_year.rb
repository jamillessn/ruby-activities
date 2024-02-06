def century_from_year(year)
    if year % 100 == 0
       result = year/100
    else
        result = (year/100) + 1
    end

    p result
end

century_from_year(1705)
century_from_year(1900)
century_from_year(1601)
century_from_year(2000)