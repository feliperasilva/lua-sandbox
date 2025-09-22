function potencia(base, expoente)
    if expoente > 0 then
        return base * potencia(base, expoente - 1)
    elseif expoente < 0 then
        return 1 / potencia(base, -expoente)
    else
        return 1
    end
end

print(potencia(2, 2))
print(potencia(3, 2))
print(potencia(4, 4))
print(potencia(2, -2))
