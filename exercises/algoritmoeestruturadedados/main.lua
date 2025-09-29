local function soma(a, b)
    if b == 0 then return a end
    return soma(a + 1, b - 1)
end

local function sub(a, b)
    if b == 0 then return a end
    return sub(a - 1, b - 1)
end

local function mult(a, b)
    if b == 0 then return 0 end
    return soma(a, mult(a, b - 1))
end

local function div(a, b, count)
    count = count or 0
    if b == 0 then return "Erro: divisão por zero" end
    if a < b then return count end
    return div(a - b, b, count + 1)
end

local function pot(base, exp)
    if exp == 0 then return 1 end
    return base * pot(base, exp - 1)
end

local function fatorial(n)
    if n == 0 then return 1 end
    return n * fatorial(n - 1)
end

local function menu()
    print("\n==== CALCULADORA RECURSIVA ====")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão (inteira)")
    print("5 - Potência")
    print("6 - Fatorial")
    print("0 - Sair")
    io.write("Escolha uma opção: ")
    return io.read("*n")
end

while true do
    local opcao = menu()

    if opcao == 0 then
        print("Saindo... Até mais!")
        break
    end

    if opcao >= 1 and opcao <= 5 then
        io.write("Digite o primeiro número: ")
        local a = io.read("*n")
        io.write("Digite o segundo número: ")
        local b = io.read("*n")

        local resultado
        if opcao == 1 then resultado = soma(a, b)
        elseif opcao == 2 then resultado = sub(a, b)
        elseif opcao == 3 then resultado = mult(a, b)
        elseif opcao == 4 then resultado = div(a, b)
        elseif opcao == 5 then resultado = pot(a, b)
        end

        print("Resultado = ", resultado)

    elseif opcao == 6 then
        io.write("Digite um número: ")
        local n = io.read("*n")
        print("Resultado = ", fatorial(n))

    else
        print("Opção inválida! Tente novamente.")
    end
end
