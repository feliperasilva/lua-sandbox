function Dec2Bin(n)
    if n == 0 then
        return "0"
    elseif n == 1 then
        return "1"
    else
        return Dec2Bin(n // 2) .. (n % 2)
    end
end

print(Dec2Bin(12))
print(Dec2Bin(7))
print(Dec2Bin(0))
