function [mini, maxi, rango, media, mediana, de, t] = pye


#    x1 = [5.9 7.2 7.3 6.3 8.1 6.8 7 7.6 6.8 6.5 7 6.3 7.9 9 8.2 8.7 7.8 9.7 7.4 7.7];
    x1 = [0.83 0.88 0.88 1.04 1.09 1.12 1.29 1.31 1.48 1.49 1.59 1.62 1.65 1.72 1.76 1.83];

    #x2 = [0];

    t1 = length(x1);

    #t2 = length(x2);

    t = [t1];
    #t = [t1 t2];
#-------------------------------------------------------------------------------
# MINIMOS Y MAXIMOS
    mini = [min(x1)];
    maxi = [max(x1)];
#-------------------------------------------------------------------------------
# RANGO
    rango = [x1(length(x1)) - x1(1)];
# x2(length(x2)) - x2(1)]  ;
#-------------------------------------------------------------------------------
# MEDIA
    media1 = 0;
    #media2 = 0;

    for i=1:length(x1)
        media1 = media1 + x1(i);
        #media2 = media2 + x2(i);
    end

    media1 = media1 ./ length(x1);
    #media2 = media2 ./ length(x2);

    media = [media1];
    #media = [media1 media2];
#-------------------------------------------------------------------------------
# MEDIANA
    if mod(length(x1), 2) == 0
        mediana1 = (x1(length(x1)./2) + x1((length(x1)./2) + 1)) ./ 2;
        #mediana2 = (x2(length(x2)./2) + x2((length(x2)./2) + 1)) ./ 2;
    else
        mediana1 = x1((length(x1) + 1)./ 2);
        #mediana2 = x2((length(x2) + 1)./ 2);
    end

    mediana = [mediana1];
    #mediana = [mediana1 mediana2];
#-------------------------------------------------------------------------------
# DESVIACION ESTANDAR
    x11 = [];
    #x22 = [];
    for i=1:length(x1)
        x11 = [x11 (x1(i) - media1)];
        #x22 = [x22 (x2(i) - media2)];
    end

    suma1 = 0;
    #suma2 = 0;

    for i=1:length(x11)
        suma1 = suma1 + (x11(i)).^2;
     #   suma2 = suma2 + (x22(i)).^2;
    end

    suma1 = suma1 ./ (length(x11) - 1);
    #suma2 = suma2 ./ (length(x22) - 1);

    de1 = sqrt(suma1);
    #de2 = sqrt(suma2);

    de = [de1];
    #de = [de1 de2];
#-------------------------------------------------------------------------------
# CUARTILES (Q1, Q3)

end
