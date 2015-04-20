format compact;
format long;
for m = 100:100:2000
    m
    protokatow = kwadratura_prostokatow(m)
    trapezow = kwadratura_trapezow(m)
end
