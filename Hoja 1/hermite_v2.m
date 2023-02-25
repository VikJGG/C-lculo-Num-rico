function pol = hermite_v2(n,x)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: V�ctor Jos� Garc�a Garrido
    % Departamento de F�sica y Matem�ticas, UAH
    % C�lculo Num�rico - Grado en FIE
    % Curso Acad�mico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if n == 0
        pol = ones(1,length(x));
    elseif n == 1
        pol = 2 .* x;
    else       
         pol = 2 .* x .* hermite_v2(n - 1,x) - 2 .* (n - 1) .* hermite_v2(n - 2,x);
    end
end