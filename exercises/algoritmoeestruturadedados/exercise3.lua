function sucessor(n)
    return n + 1
end

function predecessor(n)
    return n - 1
end

function soma(x, y)
    if y == 0 then
        return x
    else
        return sucessor(soma(x, predecessor(y)))
    end
end

print(soma(5, 3))
print(soma(10, 0))
