function pol = Chebishev(n,x) 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: V�ctor Jos� Garc�a Garrido
    % Departamento de F�sica y Matem�ticas, UAH
    % C�lculo Num�rico - Grado en FIE
    % Curso Acad�mico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if n == 0
        pol = 1;
    elseif n == 1
        pol = 2 .* x;
    else
        pol = 2 .* x .* hermite(n - 1,x) - 2 .* (n - 1) .* hermite(n - 2,x);
   end
end

