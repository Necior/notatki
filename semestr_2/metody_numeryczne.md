# Metody numeryczne

## Laboratoria - organizacja

MATLAB będzie tematem pierwszych 6 zajęć:
  * 1 - wstęp, podstawowe informaje o pakiecie MATLAB;
  * 2-5 - chwila "wykładu", później zadania na ocenę (do zdobycia 2 punkty za każde zajęcia);
  * 6 - poprawa jednych zajęć;

Uwaga: z co najmniej 3 zajęć trzeba mieć co najmniej 1 punkt. Łącznie należy uzyskać co najmniej 4 punkty.

Następnie będzie 9 laboratoriów poświęconych ściślej metodom numerycznym (interpolacja, całkowanie, miejsca zerowe funkcji, rozwiązywanie układów (nie)liniowych). Do zdobycia 3 punkty za 7 zajęć. 2 laboratoria będą poprawkowe (wtedy do zdobycia są 2 punkty, nie 3, za poprawiane zajęcia). Na tych zajęciach można pracować w dowolnym dostępnym środowisku, jednak w MATLAB-ie najwygodniej.

Uwaga: z co najmniej 6 zajęć trzeba mieć co najmniej 1 punkt. Łącznie należy uzyskać co najmniej 10 punktów.

### Środowisko

* Dla studentów "MATLAB and Simulink Student Suite" jest za $89.00.
* Istnieje GNU Octave, które jest niezłym zamiennikiem.

# Notatki

## Laboratoria #1, 23.02.2015

### MATLAB - rodzaje plików

* `*.m` - pliki źródłowe (skrypty?)
* `*.mat` - binarne pliki z danymi
* `*.fig` - wykresy/grafiki

### Typy danych

Proste:
* liczby rzeczywiste
* liczby całkowite
* liczby zespolone
* stringi

Złożone:
* struktury (podobne do C-owych)
* komórki (niczym lista obiektów różnych typów)

Uwaga: warto pamiętać o ograniczeniach wynikających z IEEE 754 (_double-precision floating-point format_).

### Polecenia i składnia

`what`, `who`, `whos`, `help` (np. `help complex`, ale `doc` jest bogatsze), `clear`, `clc`, `clf`, `format` (`format short` pokazuje za mało).

Także: `clock`, `date`, `more on` (`more off`), `var`, `zeros`, `diary on` (`diary off`).

Zapisywanie do pliku (zrzut danych):
* `save file` - zapisz wszystko (binarnie, wraz z nazwami zmiennych)
* `save file V1 V2` - zapisz `V1`, `V2` (binarnie, wraz z nazwami zmiennych)
* `save --ascii file V1` - zapisz `V1` (tekstowo bez nazwy zmiennej)

Przypisanie: `x = 7`, `x = 'hello'`. Można przypisywać do predefiniowanych zmiennych, np.:

```
> pi
ans =  3.1416
> pi = 5
pi =  5
> pi
pi =  5
> clear pi
> pi
ans =  3.1416
```

Warto pamiętać, że `i` oraz `j` służą za jednostkę urojoną. Łatwo o tym zapomnieć przy pętlach i nadpisać je. Dlatego też lepiej stosować zapis `complex(1, 3)` lub `a + 3i`, a nie `1 + 3*i`.

Jeśli różnica między dwoma liczbami jest mniejsza niż `eps` to te liczby są utożsamiane ze sobą (ze względu na zapis liczb zmiennoprzecinkowych w pamięciu komputera).

Średnik na końcu polecenia przekierowuje output do `/dev/null` (powiedzmy).

Komentarze tworzy się za pomocą znaku procenta (`%`).

Polecenia można łączyć (i kombinować ich wyjścia), np:
```
> a = 1, b = 2; c = 3; d = 4, e = 5;
a =  1
d =  4
```

Wielokropek pozwala na wielolinijkowe polecenia, np.:
```
> a = ...
> 5 + 5 + ...
> 6 + 6 + ...
> 7
a =  29
```

Nazwy zmiennych typowo (tj. `[a-zA-Z0-9_]`), zaczynamy od litery.

`A = [1 2 3; 4 5 6]` daje nam \(A = \begin{vmatrix}
a & b \\
c & d
\end{vmatrix}\). Pusta macierz : `B = []`.

Generowanie wektorów: `w = od:krok:do`, gdzie `krok` można pominąć:

```
> 4:7
ans =

   4   5   6   7

> 7:4
ans = [](1x0)
> 7:-1:4
ans =

   7   6   5   4
```

**Zagadka**: jakie będzie `D`?

```
A = 1:3;
B = 4:6;
C = [7; 8];
D = [[A; B], C]
```

**Odpowiedź**: D = \(\begin{vmatrix}
1 & 2 & 3 & 7 \\
4 & 5 & 6 & 8
\end{vmatrix}\)

Wybieranie elementu z macierzy po indeksach (indeksujemy od jedynki):
```
> D(2, 4)
ans =  8
```

Wybieranie kolumny (analogicznie wiersza):
```
> D(:, 4)
ans =

   7
   8
```

Można też przypisywać w podobny sposób:
```
> D
D =

   1   2   3   7
   4   5   6   8

> D(:, 2) = [7; 8]
D =

   1   7   3   7
   4   8   6   8
```

Ustawienie kolumn "wspak":
```
> M = [3 2 1; 6 5 4; 9 8 7]
M =

   3   2   1
   6   5   4
   9   8   7

> M(:, end:-1:1)
ans =

   1   2   3
   4   5   6
   7   8   9
```

Jednoargumentowe wybieranie elementu z wektora:
```
> f = [1:5]
f =

   1   2   3   4   5

> f(1, 3)
ans =  3
> f(3)
ans =  3
> v = [1; 2; 3; 4; 5]
v =

   1
   2
   3
   4
   5

> v(3, 1)
ans =  3
0> v(3)
ans =  3
```

Mnożenie prawostronne: `/`. Mnożenie lewostronne: `\`. Przydatne w macierzach (\(A/B = AB^{-1}\), \(B \textbackslash A = B^{-1} A\)). Przykład:
```
> 12/4
ans =  3
> 4\12
ans =  3
```

Mnożenie wszystkich elementów macierzy przez liczbę:
```
> M = [1 2 3; 4 5 6; 7 8 9]
M =

   1   2   3
   4   5   6
   7   8   9

> M.*10
ans =

   10   20   30
   40   50   60
   70   80   90
```

Porównywanie macierzy odbywa się po elementach i zwraca macierz:
```
[3 -2; 5 0] <= [3 7; 2 5]
ans =

   1   1
   0   1
```

`p & q` wykonuje `p` oraz `q` zaś `p && q` wykonuje tylko niezbędne operacje (jak w C).

Transpozycja macierzy: `A.'`.

