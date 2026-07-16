Function Main()
    
    LOCAL nRaio
    LOCAL nArea, nBase 
    LOCAL nPeso, nAltura

    hb_cdpSelect("PT850")
    
    QOut("Calcular µrea de um C¡rculo.")
    ACCEPT "Digite o Raio: " to nRaio
    AreaCirculo(nRaio)

    QOut("Calcular a hipotenusa de um Triƒngulo Retangulo")
    ACCEPT "Digite a Area: " to nArea
    ACCEPT "Digite a Base: " to nBase
    Hipotenusa(nArea, nBase)

    QOut("Calcular IMC")
    ACCEPT "Digite Peso: " to nPeso
    ACCEPT "Digite a Altura (ex: 1.80): " to nAltura
    IMC(nPeso, nAltura)

Return NIL

Function AreaCirculo(nRaio)
    #define PI 3.14159
    nRaio:= Val(nRaio)
    QOut("Area do C¡rculo: ", AllTrim(Str(PI*(nRaio^2), 10, 2)))
Return NIL

Function Hipotenusa(nArea, nBase)
    nArea:= Val(nArea)
    nBase:= Val(nBase)
    QOut("Hipotenusa do Triƒngulo retangulo: ", AllTrim(Str(Sqrt((nArea^2) + (nBase^2)), 10, 2)))
Return NIL

Function IMC(nPeso, nAltura)
nPeso:= Val(nPeso)
nAltura:= Val(nAltura)
QOut("IMC: ", AllTrim(Str(nPeso/(nAltura^2))))
Return NIL