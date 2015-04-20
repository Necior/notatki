function [ pole ] = kwadratura_prostokatow( m )
% Kwadratura prostokątów (z punktem środkowym) używająca m przedziałów dla funkcji cos²(x/2)

pole = 0;
przedzialy = 0:1/m:1;

for i = 1:m
    srodek = (przedzialy(i) + przedzialy(i+1)) / 2;
    pole = pole + (przedzialy(i+1) - przedzialy(i)) * cos(srodek/2) * cos(srodek/2);
end

end

