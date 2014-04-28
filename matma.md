# Przydatne wzory na maturę z matematyki, których nie ma w tablicach

Widzisz błąd? Brakuje jakiegoś wzoru? Literówka? Napisz do mnie na Facebooku lub emailem (adrian _at_ sadlocha _dot_ eu), a poprawię ten dokument.

## Prosta a wektory

> Dany jest wektor $\vec{DE} = [A, B]$. Podaj równanie prostej prostopadłej do tego wektora.

$$Ax + By + C = 0$$

---

> Dany jest wektor $\vec{DE} = [A, B]$. Podaj równanie prostej równoległej do tego wektora.

Zamieniamy współczynniki i w jednym zmieniamy znak.

$$Bx - Ay + C = 0$$

---

## Parzystość i nieparzystość funkcji

> Podaj równanie, które jest warunkiej funkcji parzystej.

$$f(x)=f(-x)$$

---

> Podaj równanie, które jest warunkiej funkcji nieparzystej.

$$f(-x)=-f(x)$$

---

## Metoda wyznaczników

Dany jest układ równań:
$$\begin{cases}
a_1 x + b_1 y = c_1 \\
a_2 x + b_2 y = c_2
\end{cases}$$

---

$$W = \begin{vmatrix} 
a_1 & b_1 \\
a_2 & b_2
\end{vmatrix}$$

$$W_x = \begin{vmatrix}
c_1 & b_1 \\
c_2 & b_2
\end{vmatrix}$$

$$W_y = \begin{vmatrix}
a_1 & c_1 \\
a_2 & c_2
\end{vmatrix}$$

---

$$x = \frac{W_x}{W}$$
$$y = \frac{W_y}{W}$$

---

Układ oznaczony (jedno rozwiązanie):
$$W \neq 0$$

Układ nieoznaczony (nieskończenie wiele rozwiązań):
$$W = 0 \land W_x = 0 \land W_y = 0$$

Układ sprzeczny (brak rozwiązań):
$$W = 0 \land (W_x \neq 0 \lor W_y \neq 0)$$

---

## Inne

> Podaj wzór na tangens kąta przecięcia się dwóch prostych.

$$tg \alpha = \left|\frac{a_1 - a_2}{1 + a_1 a_2}\right|$$

---